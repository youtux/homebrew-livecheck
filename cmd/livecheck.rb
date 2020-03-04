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

  def livecheck
    livecheck_args.parse

    if Homebrew.args.debug?
      puts ARGV
      puts Homebrew.args
      puts ENV["HOMEBREW_LIVECHECK_WATCHLIST"]
      puts Pathname.new(File.expand_path(__dir__)).basename
      puts $LOAD_PATH
    end

    if cmd = Homebrew.args.named.first
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
      else
        Enumerator.new do |enum|
          File.open(WATCHLIST_PATH).each do |line|
            line.split.each do |word|
              enum.yield Formulary.factory(word)
            end
          end
        rescue Errno::ENOENT => e
          onoe e
        end
      end

    formulae_checked = formulae_to_check.sort.map do |formula|
      print_latest_version formula
    rescue => e
      onoe "#{Tty.blue}#{formula}#{Tty.reset}: #{e}" unless Homebrew.args.quiet?
      Homebrew.failed = true
      nil
    end

    puts JSON.generate(formulae_checked.compact) if Homebrew.args.json?
  end

  def print_latest_version(formula)
    if formula.to_s.include?("@") && !formula.livecheckable
      puts "#{Tty.red}#{formula}#{Tty.reset} : versioned" unless Homebrew.args.quiet?
      return
    end

    if !formula.stable? && !formula.installed?
      unless Homebrew.args.quiet?
        puts "#{Tty.red}#{formula}#{Tty.reset} : HEAD only formula must be installed to be livecheckable"
      end
      return
    end

    current = formula.stable? ? formula.version : formula.installed_version
    latest = formula.stable? ? formula.latest : formula.latest_head_version
    if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
      latest = Version.new(m[1])
    end

    is_outdated = current < latest
    is_newer_than_upstream = current > latest

    formula_s = "#{Tty.blue}#{formula}#{Tty.reset}"
    formula_s += " (guessed)" unless formula.livecheckable
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

    needs_to_show = is_outdated || !Homebrew.args.newer_only?
    if needs_to_show
      if Homebrew.args.json?
        return {
          "formula" => formula.full_name,
          "version" => {
            "current"                => current.to_s,
            "latest"                 => latest.to_s,
            "is_outdated"            => is_outdated,
            "is_newer_than_upstream" => is_newer_than_upstream,
            "guessed"                => !formula.livecheckable,
          },
        }
      else
        puts "#{formula_s} : #{current_s} ==> #{latest_s}"
      end
    end

    if is_newer_than_upstream && Homebrew.args.verbose?
      opoo "#{formula_s} version is greater than the upstream version"
    end
  end
end
