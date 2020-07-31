# frozen_string_literal: true

require "cli/parser"

require_relative "../livecheck/livecheck_strategy"
require_relative "../livecheck/extend/formulary"
require_relative "../livecheck/extend/livecheck"

module Homebrew
  module_function

  WATCHLIST_PATH = (ENV["HOMEBREW_LIVECHECK_WATCHLIST"] || Pathname.new(Dir.home)/".brew_livecheck_watchlist").freeze
  private_constant :WATCHLIST_PATH

  GITHUB_SPECIAL_CASES = %w[
    api.github.com
    /latest
    mednafen
    camlp5
    kotlin
    osrm-backend
    prometheus
    pyenv-virtualenv
    sysdig
    shairport-sync
    yuicompressor
  ].freeze
  private_constant :GITHUB_SPECIAL_CASES

  UNSTABLE_VERSION_KEYWORDS = %w[
    alpha
    beta
    bpo
    dev
    experimental
    prerelease
    preview
    rc
  ].freeze
  private_constant :UNSTABLE_VERSION_KEYWORDS

  NO_VERSIONS_MSG = "Unable to get versions"
  HEAD_ONLY_MSG = "HEAD only formula must be installed to be livecheckable"
  private_constant :NO_VERSIONS_MSG, :HEAD_ONLY_MSG

  @livecheck_strategy_names = {}

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
        begin
          File.readlines(WATCHLIST_PATH).each_with_object([]) do |word, memo|
            memo << Formulary.factory(word.chomp) unless word.start_with?("#")
          end
        rescue Errno::ENOENT => e
          onoe e
        end
      end

    if formulae_to_check.nil? || (formulae_to_check.is_a?(Array) && formulae_to_check.empty?)
      onoe "No formulae to check."
      return
    end

    # Identify any non-homebrew/core taps in use for current formulae
    non_core_taps = {}
    formulae_to_check.each do |f|
      non_core_taps[f.tap.name] = true unless f.tap.nil? || f.tap.name == "homebrew/core"
    end
    non_core_taps = non_core_taps.keys.sort

    # Load additional LivecheckStrategy files from taps
    non_core_taps.each do |tap_name|
      tap_strategy_path = File.join(Tap.fetch(tap_name).path, "livecheck_strategy")
      Dir[File.join(tap_strategy_path, "*.rb")].sort.each(&method(:require)) if Dir.exist?(tap_strategy_path)
    end

    # Cache demodulized strategy names, to avoid repeating this work
    LivecheckStrategy.constants.sort.each do |strategy_symbol|
      strategy = LivecheckStrategy.const_get(strategy_symbol)
      @livecheck_strategy_names[strategy] = strategy.name.demodulize
    end
    @livecheck_strategy_names.freeze

    has_a_newer_upstream_version = false
    formulae_checked = formulae_to_check.sort.map.with_index do |formula, i|
      puts "\n----------\n" if Homebrew.args.debug? && i.positive?

      skip_result = skip_conditions(formula)
      next skip_result if skip_result != false

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
          next version_info if version_info.is_a?(Hash) && version_info["status"] && version_info["messages"]

          next status_hash(formula, "error", [NO_VERSIONS_MSG])
        else
          raise TypeError, NO_VERSIONS_MSG
        end
      end

      if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
        latest = Version.new(m[1])
      end

      info = {
        "formula" => formula_name(formula),
        "version" => {
          "current"             => current.to_s,
          "latest"              => latest.to_s,
          "outdated"            => formula.stable? ? (current < latest) : (current != latest),
          "newer_than_upstream" => formula.stable? && (current > latest),
        },
        "meta"    => {
          "livecheckable" => formula.livecheckable?,
        },
      }
      info["meta"]["head_only"] = !formula.stable? unless formula.stable?
      info["meta"].merge!(version_info["meta"]) unless version_info.nil? || !version_info.key?("meta")

      next if Homebrew.args.newer_only? && !info["version"]["outdated"]

      has_a_newer_upstream_version ||= true

      if Homebrew.args.json?
        info.except!("meta") unless Homebrew.args.verbose?
        next info
      end

      print_latest_version(info)
      nil
    rescue => e
      Homebrew.failed = true

      if Homebrew.args.json?
        status_hash(formula, "error", [e.to_s])
      elsif !Homebrew.args.quiet?
        onoe "#{Tty.blue}#{formula_name(formula)}#{Tty.reset}: #{e}"
        nil
      end
    end

    if (Homebrew.args.newer_only? && !has_a_newer_upstream_version) &&
       !(Homebrew.args.json? || Homebrew.args.debug?)
      puts "No newer upstream versions."
    end

    puts JSON.generate(formulae_checked.compact) if Homebrew.args.json?
  end

  def self.formula_name(formula)
    Homebrew.args.full_name? ? formula.full_name : formula.name
  end
  private_class_method :formula_name

  def self.status_hash(formula, status_str, messages = nil)
    status_hash = {
      "formula" => formula_name(formula),
      "status"  => status_str,
    }
    status_hash["messages"] = messages if messages.is_a?(Array)

    if Homebrew.args.verbose?
      status_hash["meta"] = {
        "livecheckable" => formula.livecheckable?,
      }
      status_hash["meta"]["head_only"] = !formula.stable? unless formula.stable?
    end

    status_hash
  end
  private_class_method :status_hash

  def self.skip_conditions(formula)
    if formula.deprecated? && !formula.livecheckable?
      if Homebrew.args.json?
        return status_hash(formula, "deprecated")
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : deprecated"
        return
      end
    end

    if formula.to_s.include?("@") && !formula.livecheckable?
      if Homebrew.args.json?
        return status_hash(formula, "versioned")
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : versioned"
        return
      end
    end

    if !formula.stable? && !formula.any_version_installed?
      if Homebrew.args.json?
        return status_hash(formula, "error", [HEAD_ONLY_MSG])
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : #{HEAD_ONLY_MSG}"
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
        return status_hash(formula, "skipped", (skip_msg.empty? ? nil : [skip_msg]))
      elsif !Homebrew.args.quiet?
        puts "#{Tty.red}#{formula_name(formula)}#{Tty.reset} : skipped" \
             "#{" - #{skip_msg}" unless skip_msg.empty?}"
        return
      end
    end

    false
  end
  private_class_method :skip_conditions

  def self.print_latest_version(info)
    formula_s = "#{Tty.blue}#{info["formula"]}#{Tty.reset}"
    formula_s += " (guessed)" if !info["meta"]["livecheckable"] && Homebrew.args.verbose?

    current_s =
      if info["version"]["newer_than_upstream"]
        "#{Tty.red}#{info["version"]["current"]}#{Tty.reset}"
      else
        info["version"]["current"]
      end

    latest_s =
      if info["version"]["outdated"]
        "#{Tty.green}#{info["version"]["latest"]}#{Tty.reset}"
      else
        info["version"]["latest"]
      end

    puts "#{formula_s} : #{current_s} ==> #{latest_s}"
  end
  private_class_method :print_latest_version

  def self.checkable_urls(formula)
    urls = []
    urls << formula.head.url if formula.head
    if formula.stable
      urls << formula.stable.url
      urls.concat(formula.stable.mirrors)
    end
    urls << formula.homepage if formula.homepage

    urls.compact
  end
  private_class_method :checkable_urls

  def self.preprocess_url(url)
    # Check for GitHub repos on github.com, not AWS
    url.sub!("github.s3.amazonaws.com", "github.com") if url.include?("github")

    # Use repo from GitHub or GitLab inferred from download URL
    if url.include?("github.com") && GITHUB_SPECIAL_CASES.none? { |sc| url.include? sc }
      if url.include? "archive"
        url = url.sub(%r{/archive/.*}, ".git") if url.include? "github"
      elsif url.include? "releases"
        url = url.sub(%r{/releases/.*}, ".git")
      elsif url.include? "downloads"
        url = Pathname.new(url.sub(%r{/downloads(.*)}, "\\1")).dirname.to_s+".git"
      elsif !url.end_with?(".git")
        # Truncate the URL at the user/repo part, if possible
        github_repo_url = url[%r{((?:[a-z]+://)?github.com/[^/]+/[^/#]+)}]
        url = github_repo_url unless github_repo_url.nil?

        url = url[0..-2] if url.end_with?("/")

        url += ".git"
      end
    elsif url.include?("/-/archive/")
      url = url.sub(%r{/-/archive/.*$}i, ".git")
    end

    url
  end
  private_class_method :preprocess_url

  def self.latest_version(formula)
    has_livecheckable = formula.livecheckable?
    livecheck = formula.livecheck
    livecheck_regex = livecheck.regex
    livecheck_strategy = livecheck.strategy
    livecheck_url = livecheck.url

    urls = [livecheck_url] if livecheck_url.is_a?(String) && !livecheck_url.blank?
    urls ||= checkable_urls(formula)

    if Homebrew.args.debug?
      puts "\nFormula:          #{formula_name(formula)}"
      puts "Head only?:       #{!formula.stable?}" unless formula.stable?
      puts "Livecheckable?:   #{has_livecheckable ? "Yes" : "No"}"
    end

    urls.each_with_index do |original_url, i|
      puts "\nURL:              #{original_url}" if Homebrew.args.debug?

      # Skip Gists until/unless we create a method of identifying revisions
      if original_url.include?("gist.github.com")
        odebug "Skipping: GitHub Gists are not supported"
        next
      end

      # Do not preprocess the URL when livecheck.strategy is set to :page_match
      url = (livecheck_strategy == :page_match) ? original_url : preprocess_url(original_url)

      strategies = LivecheckStrategy.from_url(url, livecheck_regex.present?)
      strategy = LivecheckStrategy.from_symbol(livecheck_strategy) || strategies[0]
      strategy_name = @livecheck_strategy_names[strategy]

      if Homebrew.args.debug?
        puts "URL (processed):  #{url}" if url != original_url
        unless strategies.empty? || !Homebrew.args.verbose?
          puts "Strategies:       #{strategies.map { |s| @livecheck_strategy_names[s] }.join(", ")}"
        end
        puts "Strategy:         #{strategy.nil? ? "None" : strategy_name}"
        puts "Regex:            #{livecheck_regex.inspect}\n" unless livecheck_regex.nil?
      end

      if livecheck_strategy == :page_match && !livecheck_regex.present?
        odebug "#{strategy_name} strategy requires a regex"
        next
      end

      if livecheck_strategy.present? && !strategies.include?(strategy)
        odebug "#{strategy_name} strategy does not apply to this URL"
        next
      end

      next if strategy.nil?

      strategy_data = strategy.find_versions(url, livecheck_regex)
      match_version_map = strategy_data[:matches]
      regex = strategy_data[:regex]

      if strategy_data[:messages].is_a?(Array) && match_version_map.empty?
        puts strategy_data[:messages] unless Homebrew.args.json?
        next if i + 1 < urls.length

        return status_hash(formula, "error", strategy_data[:messages])
      end

      if Homebrew.args.debug?
        puts "URL (strategy):   #{strategy_data[:url]}" if strategy_data[:url] != url
        puts "Regex (strategy): #{strategy_data[:regex].inspect}\n" if strategy_data[:regex] != livecheck_regex
      end

      match_version_map.delete_if do |_match, version|
        next true if version.empty?
        next false if has_livecheckable

        UNSTABLE_VERSION_KEYWORDS.any? do |rejection|
          version.to_s.include?(rejection)
        end
      end

      if Homebrew.args.debug? && !match_version_map.empty?
        puts "\nMatched Versions:\n"

        if Homebrew.args.verbose?
          match_version_map.each do |match, version|
            puts "#{match} => #{version.inspect}"
          end
        else
          puts match_version_map.values.join(", ")
        end
      end

      next if match_version_map.empty?

      version_info = {
        "latest" => Version.new(match_version_map.values.max),
      }

      if Homebrew.args.json? && Homebrew.args.verbose?
        version_info["meta"] = {
          "url"      => {
            "original" => original_url,
          },
          "strategy" => strategy.nil? ? nil : strategy_name,
        }
        version_info["meta"]["url"]["processed"] = url if url != original_url
        version_info["meta"]["url"]["strategy"] = strategy_data[:url] if strategy_data[:url] != url
        unless strategies.empty?
          version_info["meta"]["strategies"] = strategies.map { |s| @livecheck_strategy_names[s] }
        end
        version_info["meta"]["regex"] = regex.inspect unless regex.nil?
      end

      return version_info
    end

    nil
  end
  private_class_method :latest_version
end
