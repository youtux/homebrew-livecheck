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

  urls.each do |url|
    # Skip Gists until/unless we create a method of identifying revisions
    next if url.include?("gist.github.com")

    # Check for GitHub repos on github.com, not AWS
    url.sub!("github.s3.amazonaws.com", "github.com") if url.include?("github")

    puts "Trying with url #{url}" if Homebrew.args.debug?
    if url.include?("github.com") &&
       !url.include?("menhir") &&
       !url.include?("mednafen") &&
       !url.include?("camlp5") &&
       !url.include?("kotlin") &&
       !url.include?("osrm-backend") &&
       !url.include?("prometheus") &&
       !url.include?("pyenv-virtualenv") &&
       !url.include?("sysdig") &&
       !url.include?("shairport-sync") &&
       !url.include?("yuicompressor")
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
      ver = `curl -s https://hackage.haskell.org/package/"#{package}"/src/`.sub!(/.*Directory listing for #{package}-(.*) source tarball.*/, "\\1")
      match_version_map[ver] = Version.new(ver)
    elsif DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
      puts "Possible git repo detected at #{url}" if Homebrew.args.debug?

      tags = git_tags(url, regex)
      tags_only_debian = git_tags_only_debian?(tags)

      tags.each do |tag|
        # Move to the next one if tag actually is prefixed with 'debian/'
        # and upstream does not do only 'debian/' prefixed tags
        next if tag =~ %r{debian/} && !tags_only_debian

        # Remove any character before the first number
        tag_cleaned = tag[/\D*(.*)/, 1]
        match_version_map[tag] = Version.new(tag_cleaned)
      rescue TypeError
        nil
      end
    elsif url =~ %r{(sourceforge\.net|sf\.net)/} && !url.include?("mikmod") &&
          !url.include?("log4cpp") &&
          !url.include?("exiftool") &&
          !url.include?("libwps") &&
          !url.include?("gsmartcontrol") &&
          !url.include?("e2fsprogs") &&
          !url.include?("potrace") &&
          !url.include?("remake") &&
          !url.include?("/avf/") &&
          !url.include?("/bashdb/") &&
          !url.include?("/netpbm/") &&
          !url.include?("opencore-amr")
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
    elsif url =~ /gnu\.org/ && !url.include?("kawa") && !url.include?("lzip") && !url.include?("numdiff") && !url.include?("icoutils") && !url.include?("dvdrtools")
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
      if gnome_devel_whitelist.include?(package)
        regex ||= /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
      else
        regex ||= /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
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
