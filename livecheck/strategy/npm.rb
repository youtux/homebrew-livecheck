# frozen_string_literal: true

module LivecheckStrategy
  module Npm
    module_function

    NICE_NAME = "npm"

    def match?(url)
      /registry\.npmjs\.org/.match?(url)
    end

    def find_versions(url, regex = nil)
      package_name = url.split("/")[3..-3].reject { |s| s == "-" }.join("/")

      page_url = "https://www.npmjs.com/package/#{package_name}?activeTab=versions"
      regex ||= %r{/package/#{package_name}/v/(\d+(?:\.\d+)+)"}

      PageMatch.find_versions(page_url, regex)
    end
  end
end
