require "utils"
require_relative "heuristics/apache"
require_relative "heuristics/bitbucket"
require_relative "heuristics/github"
require_relative "heuristics/gnome"
require_relative "heuristics/gnu"
require_relative "heuristics/haskell"
require_relative "heuristics/launchpad"
require_relative "heuristics/npmjs"
require_relative "heuristics/python"
require_relative "heuristics/sourceforge"

def fallback_heuristics(url, regex = nil)
  page_matches(url, regex).map { |match| [match, Version.new(match)] }.to_h
end

# TODO: distinguish between a filter regex and a matching regex
def version_heuristic(livecheckable, urls, regex = nil)
  # Formulae that do not use GNOME's "even-numbered minor is stable" scheme

  urls.each do |url|
    # Skip Gists until/unless we create a method of identifying revisions
    next if url.include?("gist.github.com")

    url = github_preprocess(url)

    method = case url
    when /hackage\.haskell\.org/
      :haskell_heuristics
    when ->(u) { DownloadStrategyDetector.detect(u) <= GitDownloadStrategy }
      :github_heuristics
    when /(sourceforge|sf)\.net/
      :sourceforge_heuristics
    when /gnu\.org/
      :gnu_heuristics
    when /files\.pythonhosted\.org/
      :python_heuristics
    when /registry\.npmjs\.org/
      :npmjs_heuristics
    when /download\.gnome\.org/
      :gnome_heuristics
    when /launchpad\.net/
      :launchpad_heuristics
    when %r{www\.apache\.org/dyn}
      :apache_heuristics
    when %r{bitbucket\.org(/[^/]+){4}\.\w+}
      :bitbucket_heuristics
    when ->(_) { regex }
      :fallback_heuristics
    end

    match_version_map = Symbol.send(method, url, regex)

    version_rejections = %w[
      alpha
      beta
      bpo
      dev
      experimental
      prerelease
      preview
      rc
    ].freeze

    empty_version = Version.new("")
    match_version_map.delete_if do |_match, version|
      next true if version == empty_version
      next false if livecheckable

      version_rejections.any? do |rejection|
        version.to_s.include?(rejection)
      end
    end

    if Homebrew.args.debug?
      match_version_map.each do |match, version|
        puts "#{match} => #{version.inspect}"
      end
    end

    # TODO: return nil, defer the print to the caller
    return match_version_map.values.max unless match_version_map.empty?
  end

  raise TypeError, "Unable to get versions"
end
