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

  urls.each do |url|
    # Skip Gists until/unless we create a method of identifying revisions
    next if url.include?("gist.github.com")

    puts "Trying with url #{url}" if Homebrew.args.debug?
    url = preprocess_url(url)

    method = if /hackage\.haskell\.org/.match?(url)
      :hackage_strategy
    elsif DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
      :git_strategy
    elsif /(sourceforge|sf)\.net/.match?(url) &&
          SOURCEFORGE_SPECIAL_CASES.none? { |sc| url.include? sc }
      :sourceforge_strategy
    elsif url =~ /gnu\.org/ && GNU_SPECIAL_CASES.none? { |sc| url.include? sc }
      :gnu_strategy
    elsif /files\.pythonhosted\.org/.match?(url)
      :pypi_strategy
    elsif /registry\.npmjs\.org/.match?(url)
      :npm_strategy
    elsif /download\.gnome\.org/.match?(url)
      :gnome_strategy
    elsif /launchpad\.net/.match?(url)
      :launchpad_strategy
    elsif %r{www\.apache\.org/dyn}.match?(url)
      :apache_strategy
    elsif %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
      :bitbucket_strategy
    elsif livecheck_regex
      :page_match_strategy
    end
    next if method.nil?

    match_version_map = Symbol.send(method, url, livecheck_regex)

    empty_version = Version.new("")
    match_version_map.delete_if do |_match, version|
      next true if version == empty_version
      next false if has_livecheckable

      UNSTABLE_VERSION_KEYWORDS.any? do |rejection|
        version.to_s.include?(rejection)
      end
    end

    if Homebrew.args.debug?
      match_version_map.each do |match, version|
        puts "#{match} => #{version.inspect}"
      end
    end

    next if match_version_map.empty?

    # TODO: return nil, defer the print to the caller
    return Version.new(match_version_map.values.max)
  end

  raise TypeError, "Unable to get versions"
end
