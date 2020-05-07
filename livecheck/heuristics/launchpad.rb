def launchpad_heuristics(url, regex = nil)
  package = url.match(%r{launchpad\.net/([^/]*)})[1]
  page_url = "https://launchpad.net/#{package}"

  regex ||= %r{<div class="version">\s*Latest version is (.+)\s*</div>}

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
