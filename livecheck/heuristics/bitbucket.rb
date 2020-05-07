def bitbucket_heuristics(url, regex = nil)
  path, kind, suffix =
    url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/(?:.*?[-_])?v?\d+(?:\.\d+)+([^/]+)})[1, 3]
  page_url = "https://bitbucket.org/#{path}/downloads/"
  page_url << "?tab=tags" if kind == "get"

  regex ||= /(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}"/

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
