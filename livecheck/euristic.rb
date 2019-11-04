require "utils"

# TODO: distinguish between a filter regex and a matching regex
def version_euristic(urls, regex = nil)
  urls.each do |url|
    puts "Trying with url #{url}" if ARGV.debug?
    if url.include?("github") && !url.include?("menhir") &&
                                 !url.include?("mednafen") &&
                                 !url.include?("camlp5") &&
                                 !url.include?("kotlin") &&
                                 !url.include?("osrm-backend") &&
                                 !url.include?("prometheus") &&
                                 !url.include?("pyenv-virtualenv") &&
                                 !url.include?("sysdig") &&
                                 !url.include?("shairport-sync")
      if url.include? "archive"
        url = url.sub(/\/archive\/.*/, ".git") if url.include? "github"
      elsif url.include? "releases"
        url = url.sub(/\/releases\/.*/, ".git")
      elsif url.include? "downloads"
        url = Pathname.new(url.sub(/\/downloads(.*)/, "\\1")).dirname.to_s+".git"
      elsif !url.end_with?(".git")
        if url.end_with?("/")
          url = url[0..-2]
        end
        url += ".git"
      end
    end
    match_version_map = {}
    case
    when url =~ /hackage\.haskell\.org/
      package = ((url.split("/")[4]).split("-")[0..-2]).join("-")
      ver = `curl -s https://hackage.haskell.org/package/"#{package}"/src/`.sub!(/.*Directory listing for #{package}-(.*) source tarball.*/, "\\1")
      match_version_map[ver] = Version.new(ver)
    when DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
      puts "Possible git repo detected at #{url}" if ARGV.debug?

      tags = git_tags(url, regex)
      tags_only_debian = git_tags_only_debian?(tags)

      tags.each do |tag|
        begin
          # Move to the next one if tag actually is prefixed with 'debian/'
          # and upstream does not do only 'debian/' prefixed tags
          next if tag =~ /debian\// && !tags_only_debian
          # Remove any character before the first number
          tag_cleaned = tag[/\D*(.*)/, 1]
          match_version_map[tag] = Version.new(tag_cleaned)
        rescue TypeError
        end
      end
    when url =~ %r{(sourceforge\.net|sf\.net)/} && !url.include?("mikmod") &&
                                                   !url.include?("log4cpp") &&
                                                   !url.include?("exiftool") &&
                                                   !url.include?("libwps") &&
                                                   !url.include?("gsmartcontrol") &&
                                                   !url.include?("e2fsprogs") &&
                                                   !url.include?("potrace") &&
                                                   !url.include?("remake") &&
                                                   !url.include?("/avf/") &&
                                                   !url.include?("/bashdb/") &&
                                                   !url.include?("/netpbm/")
      project_name = url.match(%r{/projects?/(.*?)/})[1]
      page_url = "https://sourceforge.net/api/file/index/project-name/" \
                 "#{project_name}/rss"

      if ARGV.debug?
        puts "Possible SourceForge project [#{project_name}] detected" \
             "at #{url}"
      end

      if regex.nil?
        regex = %r{/#{project_name}/([a-zA-Z0-9.]+(?:\.[a-zA-Z0-9.]+)*)}i
      end

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        # puts "#{match} => #{version.inspect}" if ARGV.debug?
        match_version_map[match] = version
      end
    when url =~ /gnu\.org/ && !url.include?("kawa") && !url.include?("lzip") && !url.include?("numdiff") && !url.include?("icoutils") && !url.include?("dvdrtools")
      project_name_regexps = [
        %r{/(?:software|gnu)/(.*?)/},
        %r{//(.*?)\.gnu\.org(?:/)?$},
      ]
      match_list = project_name_regexps.map do |r|
        url.match(r)
      end.compact

      if match_list.length > 1
        puts "Multiple project names found: #{match_list}"
      end

      unless match_list.empty?
        project_name = match_list[0][1]
        page_url = "http://ftp.gnu.org/gnu/#{project_name}/?C=M&O=D"

        if ARGV.debug?
          puts "Possible GNU project [#{project_name}] detected at #{url}"
        end

        if regex.nil?
          regex = /#{project_name}-(\d+(?:\.\d+)*)/
        end

        page_matches(page_url, regex).each do |match|
          version = Version.new(match)
          match_version_map[match] = version
        end
      end
    when url =~ /registry\.npmjs\.org/
      package = url.split("/")[3..-3].join("/")
      page_url = "https://www.npmjs.com/package/#{package}/"

      if regex.nil?
        regex = %r{package__sidebarText.*?>([0-9\.]+)</p>}
      end

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    when url =~ /gnome\.org/
      package = url.match(%r{/sources\/(.*?)/})[1]
      page_url = "https://download.gnome.org/sources/#{package}/cache.json"

      if ARGV.debug?
        puts "Possible GNOME package [#{package}] detected at #{url}"
      end

      if regex.nil?
        regex = /#{Regexp.escape(package)}-([\d.]+\.[\d.]+\.[\d.]+)\.t/
      end

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    when url =~ /launchpad\.net/
      package = url.match(%r{launchpad\.net/([^/]*)})[1]
      page_url = "https://launchpad.net/#{package}"

      if regex.nil?
        regex = /<div class="version">\s*Latest version is (.+)\s*<\/div>/
      end
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    when regex
      # Fallback
      page_matches(url, regex).each do |match|
        version = Version.new(match)
        match_version_map[match] = version
      end
    end

    if ARGV.debug?
      match_version_map.each do |match, version|
        puts "#{match} => #{version.inspect}"
      end
    end

    empty_version = Version.new("")
    match_version_map.delete_if { |_match, version| version == empty_version }

    # TODO: return nil, defer the print to the caller
    return match_version_map.values.max unless match_version_map.empty?
  end

  fail TypeError, "Unable to get versions for #{Tty.blue}#{stable.name}#{Tty.reset}"
end
