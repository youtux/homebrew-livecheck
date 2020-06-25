# frozen_string_literal: true

module LivecheckStrategy
  class Npm
    NICE_NAME = "NPM"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      /registry\.npmjs\.org/.match?(url)
    end

    def self.find_versions(url, regex)
      package = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")
      page_url = "https://www.npmjs.com/package/#{package}?activeTab=versions"

      regex ||= %r{/package/#{package}/v/(\d+(?:\.\d+)+)"}

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
