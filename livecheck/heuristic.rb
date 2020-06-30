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

def latest_version(formula)
  has_livecheckable = formula.livecheckable?
  livecheck = formula.livecheck
  livecheck_regex = livecheck.regex
  livecheck_url = livecheck.url

  urls = [livecheck_url] if livecheck_url.is_a?(String) && !livecheck_url.blank?
  urls ||= checkable_urls(formula)

  if Homebrew.args.debug?
    puts "\nFormula:          #{formula_name(formula)}"
    puts "Head only?:       #{!formula.stable?}" unless formula.stable?
    puts "Livecheckable?:   #{has_livecheckable ? "Yes" : "No"}"
  end

  urls.each do |original_url|
    puts "\nURL:              #{original_url}" if Homebrew.args.debug?

    # Skip Gists until/unless we create a method of identifying revisions
    if original_url.include?("gist.github.com")
      odebug "Skipping: GitHub Gists are not supported"
      next
    end

    url = preprocess_url(original_url)
    strategies = LivecheckStrategy.from_url(url, livecheck_regex.present?)
    strategy = strategies[0]

    if Homebrew.args.debug?
      puts "URL (processed):  #{url}" if url != original_url
      unless strategies.empty? || !Homebrew.args.verbose?
        puts "Strategies:       #{strategies.map { |s| s::NAME }.join(", ")}"
      end
      puts "Strategy:         #{strategy.nil? ? "None" : strategy.name.demodulize}"
      puts "Regex:            #{livecheck_regex.inspect}\n" unless livecheck_regex.nil?
    end

    next if strategy.nil?

    strategy_data = strategy.find_versions(url, livecheck_regex)
    match_version_map = strategy_data[:matches]
    regex = strategy_data[:regex]

    if Homebrew.args.debug?
      puts "URL (strategy):   #{strategy_data[:url]}" if strategy_data[:url] != url
      puts "Regex (strategy): #{strategy_data[:regex].inspect}\n" if strategy_data[:regex] != livecheck_regex
    end

    empty_version = Version.new("")
    match_version_map.delete_if do |_match, version|
      next true if version == empty_version
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
        "strategy" => strategy.nil? ? nil : strategy::NAME,
      }
      version_info["meta"]["url"]["processed"] = url if url != original_url
      version_info["meta"]["url"]["strategy"] = strategy_data[:url] if strategy_data[:url] != url
      version_info["meta"]["strategies"] = strategies.map { |s| s::NAME } unless strategies.empty?
      version_info["meta"]["regex"] = regex.inspect unless regex.nil?
    end

    return version_info
  end

  nil
end
