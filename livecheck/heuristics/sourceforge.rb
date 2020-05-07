def sourceforge_heuristics(url, regex = nil)
  sourceforge_special_cases = %w[
    mikmod
    log4cpp
    libwps
    e2fsprogs
    potrace
    remake
    /avf/
    /bashdb/
    /netpbm/
    opencore-amr
  ].freeze

  return if sourceforge_special_cases.any? { |sc| url.include? sc }

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

  page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
end
