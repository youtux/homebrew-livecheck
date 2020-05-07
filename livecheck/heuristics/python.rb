def python_heuristics(url, regex = nil)
  package = url[%r{https://files.pythonhosted.org/packages/.*/.*/(.*)-.*}, 1]
  page_url = "https://pypi.org/project/#{package}"

  regex ||= /#{package} ([0-9\.]+)/

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
