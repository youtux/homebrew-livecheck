require "utils"

# TODO: distinguish between a filter regex and a matching regex
def version_heuristic(livecheckable, urls, regex = nil)
  # Formulae that do not use GNOME's "even-numbered minor is stable" scheme
  gnome_devel_whitelist = [
    "gcab",
    "gtk-doc",
    "gtk-mac-integration",
    "libart_lgpl", # The package name for libart is "libart_lgpl"
    "libepoxy",
  ].freeze

  github_special_cases = %w[
    api.github.com
    /latest
    menhir
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

  sourceforge_special_cases = %w[
    mikmod
    log4cpp
    exiftool
    libwps
    gsmartcontrol
    e2fsprogs
    potrace
    remake
    /avf/
    /bashdb/
    /netpbm/
    opencore-amr
  ].freeze

  gnu_special_cases = %w[
    kawa
    lzip
    numdiff
    icoutils
    dvdrtools
  ].freeze

  urls.each do |url|
    # Skip Gists until/unless we create a method of identifying revisions
    next if url.include?("gist.github.com")

    # Check for GitHub repos on github.com, not AWS
    url.sub!("github.s3.amazonaws.com", "github.com") if url.include?("github")

    puts "Trying with url #{url}" if Homebrew.args.debug?
    if url.include?("github.com") && github_special_cases.none? { |sc| url.include? sc }
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
    end
    match_version_map = {}
    if /hackage\.haskell\.org/.match?(url)
      package = ((url.split("/")[4]).split("-")[0..-2]).join("-")
      haskell_pkg_url = "https://hackage.haskell.org/package/#{package}/src"
      ver = URI.open(haskell_pkg_url).read.sub(/.*Directory listing for #{package}-(.*) source tarball.*/, "\\1")
      match_version_map[ver] = Version.new(ver)
    elsif DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
      puts "Possible git repo detected at #{url}" if Homebrew.args.debug?

      tags = git_tags(url, regex)
      tags_only_debian = git_tags_only_debian?(tags)

      tags.each do |tag|
        # Move to the next one if tag actually is prefixed with 'debian/'
        # and upstream does not do only 'debian/' prefixed tags
        next if tag =~ %r{debian/} && !tags_only_debian

        captures = tag.scan(regex) if regex
        tag_cleaned = if captures &&
                         !captures.empty? &&
                         captures[0].is_a?(Array)
          # Use the first capture group as the version
          captures[0][0]
        else
          # Remove any character before the first number
          tag[/\D*(.*)/, 1]
        end

        match_version_map[tag] = Version.new(tag_cleaned)
      rescue TypeError
      end
    elsif url =~ %r{(sourceforge\.net|sf\.net)/} && sourceforge_special_cases.none? { |sc| url.include? sc }
      project_name = url.match(%r{/projects?/(.*?)/})[1]
      page_url = "https://sourceforge.net/projects/#{project_name}/rss"

      if Homebrew.args.debug?
        puts "Possible SourceForge project [#{project_name}] detected" \
             "at #{url}"
      end

      regex ||= %r{/#{project_name}/([a-zA-Z0-9.]+(?:\.[a-zA-Z0-9.]+)*)}i

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        # puts "#{match} => #{version.inspect}" if Homebrew.args.debug?
        match_version_map[match] = version
      end
    elsif url =~ /gnu\.org/ && gnu_special_cases.none? { |sc| url.include? sc }
      project_name_regexps = [
        %r{/(?:software|gnu)/(.*?)/},
        %r{//(.*?)\.gnu\.org(?:/)?$},
      ]
      match_list = project_name_regexps.map do |r|
        url.match(r)
      end.compact

      puts "Multiple project names found: #{match_list}" if match_list.length > 1

      unless match_list.empty?
        project_name = match_list[0][1]
        page_url = "http://ftp.gnu.org/gnu/#{project_name}/?C=M&O=D"

        puts "Possible GNU project [#{project_name}] detected at #{url}" if Homebrew.args.debug?

        regex ||= /#{project_name}-(\d+(?:\.\d+)*)/

        page_matches(page_url, regex).each do |match|
          version = Version.new(match)
          match_version_map[match] = version
        end
      end
    elsif /files\.pythonhosted\.org/.match?(url)
      package = url[%r{https://files.pythonhosted.org/packages/.*/.*/(.*)-.*}, 1]
      page_url = "https://pypi.org/project/#{package}"

      regex ||= /#{package} ([0-9\.]+)/

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif /registry\.npmjs\.org/.match?(url)
      package = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")
      page_url = "https://www.npmjs.com/package/#{package}?activeTab=versions"

      regex ||= %r{/package/#{package}/v/(\d+(?:\.\d+)+)"}

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif /download\.gnome\.org/.match?(url)
      package = url.match(%r{/sources\/(.*?)/})[1]
      page_url = "https://download.gnome.org/sources/#{package}/cache.json"

      puts "Possible GNOME package [#{package}] detected at #{url}" if Homebrew.args.debug?

      # Restrict versions to even numbered minor versions (except x.90+)
      regex ||= if gnome_devel_whitelist.include?(package)
        /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
      else
        /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
      end

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif /launchpad\.net/.match?(url)
      package = url.match(%r{launchpad\.net/([^/]*)})[1]
      page_url = "https://launchpad.net/#{package}"

      regex ||= %r{<div class="version">\s*Latest version is (.+)\s*</div>}

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif %r{www\.apache\.org/dyn}.match?(url)
      path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]
      page_url = "https://archive.apache.org/dist/#{path}/"

      regex ||= /href="#{Regexp.escape(prefix)}(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
      path, kind, suffix =
        url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/(?:.*?[-_])?v?\d+(?:\.\d+)+([^/]+)})[1, 3]
      page_url = "https://bitbucket.org/#{path}/downloads/"
      page_url << "?tab=tags" if kind == "get"

      regex ||= /(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}"/

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    elsif regex
      # Fallback
      page_matches(url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    end

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
