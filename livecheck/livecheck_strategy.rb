GNOME_DEVEL_SKIP_LIST = [
  "gcab",
  "gtk-doc",
  "gtk-mac-integration",
  "libart_lgpl", # The package name for libart is "libart_lgpl"
  "libepoxy",
].freeze

def apache_strategy(url, regex = nil)
  match_version_map = {}

  path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]
  page_url = "https://archive.apache.org/dist/#{path}/"

  regex ||= /href="#{Regexp.escape(prefix)}(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def bitbucket_strategy(url, regex = nil)
  match_version_map = {}

  path, kind, suffix =
    url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/(?:.*?[-_])?v?\d+(?:\.\d+)+([^/]+)})[1, 3]
  page_url = "https://bitbucket.org/#{path}/downloads/"
  page_url << "?tab=tags" if kind == "get"

  regex ||= /(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}"/

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def git_strategy(url, regex = nil)
  puts "Possible git repo detected at #{url}" if Homebrew.args.debug?

  match_version_map = {}

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
    nil
  end

  match_version_map
end

def gnome_strategy(url, regex = nil)
  match_version_map = {}

  package = url.match(%r{/sources/(.*?)/})[1]
  page_url = "https://download.gnome.org/sources/#{package}/cache.json"

  puts "Possible GNOME package [#{package}] detected at #{url}" if Homebrew.args.debug?

  # Restrict versions to even numbered minor versions (except x.90+)
  regex ||= if GNOME_DEVEL_SKIP_LIST.include?(package)
    /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
  else
    /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
  end

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def gnu_strategy(url, regex = nil)
  match_version_map = {}

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

  match_version_map
end

def hackage_strategy(url, _regex = nil)
  package = ((url.split("/")[4]).split("-")[0..-2]).join("-")
  haskell_pkg_url = "https://hackage.haskell.org/package/#{package}/src"
  ver = URI.open(haskell_pkg_url).read.sub(/.*Directory listing for #{package}-(.*) source tarball.*/, "\\1")
  { ver => Version.new(ver) }
end

def launchpad_strategy(url, regex = nil)
  match_version_map = {}

  package = url.match(%r{launchpad\.net/([^/]*)})[1]
  page_url = "https://launchpad.net/#{package}"

  regex ||= %r{<div class="version">\s*Latest version is (.+)\s*</div>}

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def npm_strategy(url, regex = nil)
  match_version_map = {}

  package = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")
  page_url = "https://www.npmjs.com/package/#{package}?activeTab=versions"

  regex ||= %r{/package/#{package}/v/(\d+(?:\.\d+)+)"}

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def page_match_strategy(url, regex = nil)
  match_version_map = {}

  page_matches(url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def pypi_strategy(url, regex = nil)
  match_version_map = {}

  package = url[%r{https://files.pythonhosted.org/packages/.*/.*/(.*)-.*}, 1]
  page_url = "https://pypi.org/project/#{package}"

  regex ||= /#{package} ([0-9.]+)/

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    match_version_map[match] = version
  end

  match_version_map
end

def sourceforge_strategy(url, regex = nil)
  match_version_map = {}

  project_name = if url.include?("/project")
    url.match(%r{/projects?/([^/]+)/})[1]
  elsif url.include?(".net/p/")
    url.match(%r{\.net/p/([^/]+)/})[1]
  else
    url.match(%r{\.net(?::/cvsroot)?/([^/]+)})[1]
  end
  page_url = "https://sourceforge.net/projects/#{project_name}/rss"

  puts "Possible SourceForge project [#{project_name}] detected at #{url}" if Homebrew.args.debug?

  regex ||= %r{url=.+?/#{project_name}/files/.*?[-_/](\d+(?:[-.]\d+)+)[-_/%.]}i

  page_matches(page_url, regex).each do |match|
    version = Version.new(match)
    # puts "#{match} => #{version.inspect}" if Homebrew.args.debug?
    match_version_map[match] = version
  end

  match_version_map
end
