# frozen_string_literal: true

module LivecheckStrategy
  class Apache
    NICE_NAME = "Apache"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      %r{www\.apache\.org/dyn}.match?(url)
    end

    def self.find_versions(url, regex)
      path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]
      page_url = "https://archive.apache.org/dist/#{path}/"

      regex ||= /href="#{Regexp.escape(prefix)}(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
