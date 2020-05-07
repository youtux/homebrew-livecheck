def gnome_heuristics(url, regex = nil)
  gnome_devel_whitelist = [
    "gcab",
    "gtk-doc",
    "gtk-mac-integration",
    "libart_lgpl", # The package name for libart is "libart_lgpl"
    "libepoxy",
  ].freeze

  return if gnome_devel_whitelist.any? { |sc| url.include? sc }

  package = url.match(%r{/sources\/(.*?)/})[1]
  page_url = "https://download.gnome.org/sources/#{package}/cache.json"

  puts "Possible GNOME package [#{package}] detected at #{url}" if Homebrew.args.debug?

  # Restrict versions to even numbered minor versions (except x.90+)
  regex ||= if gnome_devel_whitelist.include?(package)
    /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
  else
    /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
  end

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
