def npmjs_heuristics(url, regex = nil)
  package = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")
  page_url = "https://www.npmjs.com/package/#{package}?activeTab=versions"

  regex ||= %r{/package/#{package}/v/(\d+(?:\.\d+)+)"}

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
