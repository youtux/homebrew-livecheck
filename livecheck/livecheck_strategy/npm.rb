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

      PageMatch.find_versions(page_url, regex)
    end
  end
end
