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
      switch "--check-pulls",
             description: "Check open pull requests."
      conflicts "--tap=", "--all", "--installed"
    end
  end

  def formula_name(formula)
    Homebrew.args.full_name? ? formula.full_name : formula.name
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
      else
        Enumerator.new do |enum|
          File.open(WATCHLIST_PATH).each do |line|
            next if line.match?(/^#/)

            line.split.each do |word|
              enum.yield Formulary.factory(word)
            end
          end
        rescue Errno::ENOENT => e
          onoe e
        end
      end

    formulae_info_checked = formulae_to_check.sort.map do |formula|
      info = check_latest_version formula
      print_latest_version info unless Homebrew.args.json?
      info
    rescue => e
      onoe "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}: #{e}" unless Homebrew.args.quiet?
      Homebrew.failed = true
      nil
    end

    formulae_info_checked.compact!

    if Homebrew.args.check_pulls?
      formulae = formulae_info_checked.map do |info|
        Formula[info["formula"]]
      end

      repos = formulae.map do |formula|
        formula_repo formula
      end

      repos.uniq!

      repos.each do |repo|
        pulls = GitHub.search("issues", type: "pr", state: "open", repo: repo)
        pulls.each do |pull|
          formulae.each do |formula|
            next unless formula_repo(formula) == repo
            next unless pull["title"].include?(formula.name)

            if Homebrew.args.json?
              formulae_info_checked.each_index do |ind|
                next unless formulae_info_checked[ind]["formula"] == formula_name(formula)

                formulae_info_checked[ind]["pull"] = pull["title"]
              end
            else
              puts "#{formula_name(formula)}: #{pull["title"]}"
            end
          end
        end
      end
    end

    puts JSON.generate(formulae_info_checked) if Homebrew.args.json?
  end

  def formula_repo(formula)
    linux_only_formula = formula.requirements.any? { |req| req.is_a? LinuxRequirement }
    repo = formula.tap.full_name
    repo = repo.gsub "linuxbrew", "homebrew" if !linux_only_formula && formula.tap.core_tap?
    repo
  end

  def print_latest_version(info)
    formula_s = "#{Tty.blue}#{info["formula"]}#{Tty.reset}"
    formula_s += " (guessed)" if info["version"]["guessed"]
    current_s =
      if info["version"]["is_newer_than_upstream"]
        "#{Tty.red}#{info["version"]["current"]}#{Tty.reset}"
      else
        info["version"]["current"]
      end
    latest_s =
      if info["version"]["is_outdated"]
        "#{Tty.green}#{info["version"]["latest"]}#{Tty.reset}"
      else
        info["version"]["latest"]
      end
    puts "#{formula_s} : #{current_s} ==> #{latest_s}"
  end

  def check_latest_version(formula)
    if formula.to_s.include?("@") && !formula.livecheckable
      puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : versioned" unless Homebrew.args.quiet?
      return
    end

    if !formula.stable? && !formula.installed?
      unless Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : " \
          "HEAD only formula must be installed to be livecheckable"
      end
      return
    end

    has_hash_arg_with_skip =
      formula.livecheck_args.is_a?(Hash) && formula.livecheck_args.key?(:skip)
    if has_hash_arg_with_skip || formula.livecheck_args == :skip
      skip_msg = if has_hash_arg_with_skip &&
                    formula.livecheck_args[:skip].is_a?(String) &&
                    !formula.livecheck_args[:skip].empty?
        " - #{formula.livecheck_args[:skip]}"
      else
        ""
      end

      puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : skipped#{skip_msg}" unless Homebrew.args.quiet?
      return
    end

    current = formula.stable? ? formula.version : formula.installed_version
    latest = formula.stable? ? formula.latest : formula.latest_head_version
    if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
      latest = Version.new(m[1])
    end

    is_outdated = current < latest
    is_newer_than_upstream = current > latest

    if is_outdated || !Homebrew.args.newer_only?
      return {
        "formula" => formula_name(formula),
        "version" => {
          "current"                => current.to_s,
          "latest"                 => latest.to_s,
          "is_outdated"            => is_outdated,
          "is_newer_than_upstream" => is_newer_than_upstream,
          "guessed"                => !formula.livecheckable,
        },
        "pull"    => nil,
      }
    end

    if is_newer_than_upstream && Homebrew.args.verbose?
      opoo "#{formula_s} version is greater than the upstream version"
    end
  end
end
