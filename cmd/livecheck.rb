require "cli/parser"

require_relative "../livecheck/utils"
require_relative "../livecheck/heuristic"
require_relative "../livecheck/extend/formulary"

LIVECHECKABLES_PATH = Pathname(__dir__).parent/"Livecheckables"

WATCHLIST_PATH = ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
WATCHLIST_PATH ||= Pathname.new(Dir.home)/".brew_livecheck_watchlist"

module Homebrew
  module_function

  def livecheck_args
    Homebrew::CLI::Parser.new do
      usage_banner <<~EOS
        `livecheck` [<formulae>]

        Check for newer versions of formulae from upstream.

        If no formula argument is passed, the list of formulae to check is taken from `HOMEBREW_LIVECHECK_WATCHLIST`
        or `~/.brew_livecheck_watchlist`.
      EOS
      switch :verbose
      switch :quiet
      switch :debug
      switch "--full-name",
             description: "Print formulae with fully-qualified names."
      flag   "--tap=",
             description: "Check the formulae within the given tap, specified as <user>`/`<repo>."
      switch "--installed",
             description: "Check formulae that are currently installed."
      switch "--json",
             description: "Output informations in JSON format."
      switch "--all",
             description: "Check all available formulae."
      switch "--newer-only",
             description: "Show the latest version only if it's newer than the formula."
      conflicts "--tap=", "--all", "--installed"
    end
  end

  def formula_name(formula)
    Homebrew.args.full_name? ? formula.full_name : formula
  end

  def livecheck
    livecheck_args.parse

    if Homebrew.args.debug?
      puts ARGV
      puts Homebrew.args
      puts ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
      puts Pathname.new(File.expand_path(__dir__)).basename
      puts $LOAD_PATH
    end

    if (cmd = Homebrew.args.named.first)
      require?("livecheck/commands/#{cmd}") && return
    end

    formulae_to_check =
      if Homebrew.args.tap
        Tap.fetch(Homebrew.args.tap).formula_names.map { |name| Formula[name] }
      elsif Homebrew.args.installed?
        Formula.installed
      elsif Homebrew.args.all?
        Formula.names.map { |name| Formula[name] }
      elsif !Homebrew.args.formulae.empty?
        Homebrew.args.formulae
      elsif File.exist?(WATCHLIST_PATH)
        Enumerator.new do |enum|
          File.open(WATCHLIST_PATH).each do |line|
            next if line.start_with?("#")

            line.split.each do |word|
              enum.yield Formulary.factory(word)
            end
          end
        rescue Errno::ENOENT => e
          onoe e
        end
      end
    return unless formulae_to_check

    formulae_checked = formulae_to_check.sort.map do |formula|
      print_latest_version formula
    rescue => e
      onoe "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}: #{e}" unless Homebrew.args.quiet?
      Homebrew.failed = true
      nil
    end

    puts JSON.generate(formulae_checked.compact) if Homebrew.args.json?
  end

  def print_latest_version(formula)
    if formula.to_s.include?("@") && !formula.livecheckable?
      puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : versioned" unless Homebrew.args.quiet?
      return
    end

    if !formula.stable? && !formula.any_version_installed?
      unless Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : " \
          "HEAD only formula must be installed to be livecheckable"
      end
      return
    end

    is_gist = formula.stable&.url&.include?("gist.github.com")
    if formula.livecheck.skip? || is_gist
      skip_msg = if formula.livecheck.skip_msg.is_a?(String) &&
                    !formula.livecheck.skip_msg.blank?
        " - #{formula.livecheck.skip_msg}"
      elsif is_gist
        " - Stable URL is a GitHub Gist"
      else
        ""
      end

      puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : skipped#{skip_msg}" unless Homebrew.args.quiet?
      return
    end

    formula.head.downloader.shutup! unless formula.stable?

    current = formula.stable? ? formula.version : formula.installed_version.version.commit
    latest = formula.stable? ? latest_version(formula) : formula.head.downloader.fetch_last_commit
    if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
      latest = Version.new(m[1])
    end

    is_outdated = formula.stable? ? (current < latest) : (current != latest)
    is_newer_than_upstream = formula.stable? && (current > latest)

    formula_s = "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}"

    if is_outdated || !Homebrew.args.newer_only?
      if Homebrew.args.json?
        return {
          "formula" => formula_name(formula),
          "version" => {
            "current"                => current.to_s,
            "latest"                 => latest.to_s,
            "is_outdated"            => is_outdated,
            "is_newer_than_upstream" => is_newer_than_upstream,
            "guessed"                => !formula.livecheckable?,
            "head"                   => !formula.stable?,
          },
        }
      else
        formula_s += " (guessed)" unless formula.livecheckable?
        current_s =
          if is_newer_than_upstream
            "#{Tty.red}#{current}#{Tty.reset}"
          else
            current.to_s
          end
        latest_s =
          if is_outdated
            "#{Tty.green}#{latest}#{Tty.reset}"
          else
            latest.to_s
          end
        puts "#{formula_s} : #{current_s} ==> #{latest_s}"
      end
    end

    if is_newer_than_upstream && Homebrew.args.verbose?
      opoo "#{formula_s} version is greater than the upstream version"
    end
  end
end
