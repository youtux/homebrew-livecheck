def gnu_heuristics(url, regex = nil)
  gnu_special_cases = %w[
    kawa
    lzip
    numdiff
    icoutils
    dvdrtools
  ].freeze

  return if gnu_special_cases.any? { |sc| url.include? sc }

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

    page_matches(page_url, regex).map { |match| [match, Version.new(match)] }.to_h
  end
end
