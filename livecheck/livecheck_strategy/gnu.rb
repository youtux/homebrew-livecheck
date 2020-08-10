# frozen_string_literal: true

module LivecheckStrategy
  class Gnu
    NICE_NAME = "GNU"

    PROJECT_NAME_REGEXES = [
      %r{/(?:gnu|software)/(.+?)/},
      %r{//(.+?)\.gnu\.org(?:/)?$},
    ].freeze
    private_constant :PROJECT_NAME_REGEXES

    def self.match?(url)
      url.match?(%r{//.+?\.gnu\.org$|gnu\.org/(?:gnu|software)/}i) &&
        !url.include?("savannah.")
    end

    def self.find_versions(url, regex = nil)
      match_list = PROJECT_NAME_REGEXES.map { |r| url.match(r) }.compact
      return { matches: {}, regex: regex, url: url } if match_list.empty?

      odebug "\nMultiple project names found: #{match_list}\n" if match_list.length > 1

      project_name = match_list[0][1]

      page_url = "http://ftp.gnu.org/gnu/#{project_name}/?C=M&O=D"
      regex ||= %r{href=.*?#{project_name}[._-]v?(\d+(?:\.\d+)*)(?:\.[a-z]+|/)}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
