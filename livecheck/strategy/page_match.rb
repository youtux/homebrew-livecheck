# frozen_string_literal: true

require "open-uri"

module LivecheckStrategy
  module PageMatch
    module_function

    NICE_NAME = "Page match"
    PRIORITY = 0

    # PageMatch will technically match any HTTP URL but it's only usable when
    # there's a `livecheck` block containing a regex.
    def match?(url)
      %r{^https?://}i.match?(url)
    end

    def page_matches(url, regex)
      page = URI.open(url).read
      matches = page.scan(regex)
      matches.map(&:first).uniq
    end
    private_class_method :page_matches

    def find_versions(url, regex)
      match_data = { matches: {}, regex: regex, url: url }

      page_matches(url, regex).each do |match|
        match_data[:matches][match] = Version.new(match)
      end

      match_data
    end
  end
end
