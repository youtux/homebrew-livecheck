def apache_heuristics(url, regex = nil)
  path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]
  page_url = "https://archive.apache.org/dist/#{path}/"

  regex ||= /href="#{Regexp.escape(prefix)}(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
