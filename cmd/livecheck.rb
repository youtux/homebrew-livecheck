require "cli/parser"

require_relative "../livecheck/livecheck_strategy"
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
      conflicts "--debug", "--json"
      conflicts "--tap=", "--all", "--installed"
    end
  end

  def livecheck
    livecheck_args.parse

    if Homebrew.args.debug? && Homebrew.args.verbose?
      puts ARGV.inspect
      puts Homebrew.args
      puts ENV["HOMEBREW_LIVECHECK_WATCHLIST"] if ENV["HOMEBREW_LIVECHECK_WATCHLIST"].present?
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
        Formula.full_names.map { |name| Formula[name] }
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

    # Identify any non-homebrew/core taps in use for current formulae
    non_core_taps = {}
    formulae_to_check.each do |f|
      unless f.tap.nil?
        non_core_taps[f.tap.name] = true unless f.tap.name == "homebrew/core" || non_core_taps.key?(f.tap.name)
      end
    end
    non_core_taps = non_core_taps.keys.sort

    # Load additional LivecheckStrategy files from taps
    non_core_taps.each do |tap_name|
      tap_strategy_path = File.join(Tap.fetch(tap_name).path, "livecheck_strategy")
      Dir.glob(File.join(tap_strategy_path, "*.rb"), &method(:require)) if Dir.exist?(tap_strategy_path)
    end

    formulae_checked = formulae_to_check.sort.map.with_index do |formula, i|
      puts "\n----------\n" if Homebrew.args.debug? && i.positive?
      print_latest_version formula
    rescue => e
      Homebrew.failed = true

      if Homebrew.args.json?
        {
          "formula"  => formula_name(formula),
          "status"   => "error",
          "messages" => [e.to_s],
        }
      elsif !Homebrew.args.quiet?
        onoe "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}: #{e}"
        nil
      end
    end

    puts JSON.generate(formulae_checked.compact) if Homebrew.args.json?
  end

  def print_latest_version(formula)
    if formula.deprecated? && !formula.livecheckable?
      if Homebrew.args.json?
        return {
          "formula" => formula_name(formula),
          "status"  => "deprecated",
        }
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : deprecated"
        return
      end
    end

    if formula.to_s.include?("@") && !formula.livecheckable?
      if Homebrew.args.json?
        return {
          "formula" => formula_name(formula),
          "status"  => "versioned",
        }
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : versioned"
        return
      end
    end

    if !formula.stable? && !formula.any_version_installed?
      if Homebrew.args.json?
        return {
          "formula"  => formula_name(formula),
          "status"   => "error",
          "messages" => [
            "HEAD only formula must be installed to be livecheckable",
          ],
        }
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : " \
          "HEAD only formula must be installed to be livecheckable"
        return
      end
    end

    is_gist = formula.stable&.url&.include?("gist.github.com")
    if formula.livecheck.skip? || is_gist
      skip_msg = if formula.livecheck.skip_msg.is_a?(String) &&
                    !formula.livecheck.skip_msg.blank?
        formula.livecheck.skip_msg.to_s
      elsif is_gist
        "Stable URL is a GitHub Gist"
      else
        ""
      end

      if Homebrew.args.json?
        json_hash = {
          "formula" => formula_name(formula),
          "status"  => "skipped",
        }
        json_hash["messages"] = [skip_msg] unless skip_msg.nil? || skip_msg.empty?
        return json_hash
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : skipped" \
             "#{" - #{skip_msg}" unless skip_msg.empty?}"
        return
      end
    end

    formula.head.downloader.shutup! unless formula.stable?

    current = formula.stable? ? formula.version : formula.installed_version.version.commit

    version_info = nil
    latest = if formula.stable?
      version_info = latest_version(formula)
      version_info.nil? ? nil : version_info["latest"]
    else
      formula.head.downloader.fetch_last_commit
    end

    if latest.nil?
      if Homebrew.args.json?
        return {
          "formula"  => formula_name(formula),
          "status"   => "error",
          "messages" => ["Unable to get versions"],
        }
      else
        raise TypeError, "Unable to get versions"
      end
    end

    if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
      latest = Version.new(m[1])
    end

    is_outdated = formula.stable? ? (current < latest) : (current != latest)
    is_newer_than_upstream = formula.stable? && (current > latest)

    formula_s = "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}"

    return if Homebrew.args.newer_only? && !is_outdated

    if Homebrew.args.json?
      json_hash = {
        "formula" => formula_name(formula),
        "version" => {
          "current"             => current.to_s,
          "latest"              => latest.to_s,
          "outdated"            => is_outdated,
          "newer_than_upstream" => is_newer_than_upstream,
        },
      }

      if Homebrew.args.verbose?
        json_hash["meta"] = {}
        json_hash["meta"]["livecheckable"] = formula.livecheckable?
        json_hash["meta"]["head_only"] = !formula.stable? unless formula.stable?
        json_hash["meta"].merge!(version_info["meta"]) unless version_info.nil?
      end

      return json_hash
    end

    formula_s += " (guessed)" if !formula.livecheckable? && Homebrew.args.verbose?
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
