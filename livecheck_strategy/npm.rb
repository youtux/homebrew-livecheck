# frozen_string_literal: true

module LivecheckStrategy
  class Npm
    NAME = name.demodulize
    NICE_NAME = "npm"

    def self.match?(url)
      /registry\.npmjs\.org/.match?(url)
    end

    def self.find_versions(url, regex = nil)
      package_name = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")

      page_url = "https://www.npmjs.com/package/#{package_name}?activeTab=versions"
      regex ||= %r{/package/#{package_name}/v/(\d+(?:\.\d+)+)"}

      PageMatch.find_versions(page_url, regex)
    end
  end
end
