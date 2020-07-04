# frozen_string_literal: true

module LivecheckStrategy
  class PageMatch
    NAME = name.demodulize
    NICE_NAME = "Page match"
    PRIORITY = 0

    def self.find_versions(url, regex)
      match_data = { :matches => {}, :regex => regex, :url => url }

      page_matches(url, regex).each do |match|
        match_data[:matches][match] = Version.new(match)
      end

      match_data
    end
  end
end
