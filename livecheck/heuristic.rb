require_relative "livecheck_strategy"
require "utils"

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

GNU_SPECIAL_CASES = %w[
  kawa
  lzip
  numdiff
  icoutils
  dvdrtools
  avrdude
  oath-toolkit
  cvs
  mit-scheme
  clisp
].freeze

SOURCEFORGE_SPECIAL_CASES = %w[
  mikmod
  log4cpp
  libwps
  e2fsprogs
  potrace
  remake
  /avf/
  /bashdb/
  /netpbm/
  opencore-amr
  liba52.sourceforge.net/
  foremost.sourceforge.net/
].freeze

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

def preprocess_url(url)
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

def strat_matcher(url, strat, livecheck_regex)
  case strat
  when :hackage_strategy
    /hackage\.haskell\.org/.match?(url)
  when :git_strategy
    DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
  when :sourceforge_strategy
    /(sourceforge|sf)\.net/.match?(url) && SOURCEFORGE_SPECIAL_CASES.none? { |sc| url.include? sc }
  when :gnu_strategy
    url =~ /gnu\.org/ && GNU_SPECIAL_CASES.none? { |sc| url.include? sc }
  when :pypi_strategy
    /files\.pythonhosted\.org/.match?(url)
  when :npm_strategy
    /registry\.npmjs\.org/.match?(url)
  when :gnome_strategy
    /download\.gnome\.org/.match?(url)
  when :launchpad_strategy
    /launchpad\.net/.match?(url)
  when :apache_strategy
    %r{www\.apache\.org/dyn}.match?(url)
  when :bitbucket_strategy
    %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
  when :page_match_strategy
    livecheck_regex
  end
end

def available_strategies
  [:hackage_strategy, :git_strategy, :sourceforge_strategy, :gnu_strategy,
   :pypi_strategy, :npm_strategy, :gnome_strategy, :launchpad_strategy,
   :apache_strategy, :bitbucket_strategy, :page_match_strategy]
end

def latest_version(formula)
  has_livecheckable = formula.livecheckable?
  livecheck = formula.livecheck
  livecheck_regex = livecheck.regex
  livecheck_url = livecheck.url

  urls = [livecheck_url] if livecheck_url.is_a?(String) && !livecheck_url.blank?
  urls ||= checkable_urls(formula)

  if Homebrew.args.debug?
    puts "Formula:         #{formula_name(formula)}"
    puts "Head only?:      #{!formula.stable?}" unless formula.stable?
    puts "Livecheckable?:  #{has_livecheckable ? "Yes" : "No"}"
  end

  urls.each do |original_url|
    # Skip Gists until/unless we create a method of identifying revisions
    next if original_url.include?("gist.github.com")

    url = preprocess_url(original_url)

    strategies = available_strategies.select { |strat| strat_matcher(url, strat, livecheck_regex) }
    strat_names = if strategies.empty?
      "None found"
    else
      strategies.map(&:to_s).map { |s| s.delete_suffix("_strategy") }.join(", ")
    end

    if Homebrew.args.debug?
      puts "\nURL:             #{original_url}"
      puts "URL (processed): #{url}" if url != original_url
      puts "# of strategies: #{strategies.size}"
      puts "Strategies:      #{strat_names}"
      puts "Regex:           #{livecheck_regex.inspect}\n" unless livecheck_regex.nil?
    end

    opoo "No strategies identified for #{formula_name(formula)} using URL: #{url}" if strategies.empty?

    next if strategies.empty?

    empty_version = Version.new("")
    match_version_map = {}

    strategies.each do |strategy|
      strat_name = strategy.to_s.delete_suffix("_strategy")
      puts "Using strategy: #{strat_name}" if Homebrew.args.debug?
      version_map = Symbol.send(strategy, url, livecheck_regex)

      version_map.delete_if do |_match, version|
        next true if version == empty_version
        next false if has_livecheckable

        UNSTABLE_VERSION_KEYWORDS.any? do |rejection|
          version.to_s.include?(rejection)
        end
      end
      if version_map.empty?
        puts "No new versions found using #{strat_name}" if Homebrew.args.debug?
      else
        puts "Found new versions: #{version_map.keys.map(&:to_s).join(", ")}" if Homebrew.args.debug?
        match_version_map.merge!(version_map)
      end
    end

    if Homebrew.args.debug? && Homebrew.args.verbose? && !match_version_map.empty?
      puts "\nMatched Versions:\n"
      match_version_map.each_with_index do |(match, version), i|
        puts "Match #{i}: #{match} => #{version}"
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
        "strategy" => strategy.nil? ? nil : strategy.to_s.delete_suffix("_strategy"),
      }
      version_info["meta"]["url"]["processed"] = url if url != original_url
      version_info["meta"]["regex"] = livecheck_regex.inspect unless livecheck_regex.nil?
    end

    return version_info
  end

  nil
end
