# frozen_string_literal: true

module LivecheckStrategy
  module Npm
    module_function

    NICE_NAME = "npm"

    def match?(url)
      /registry\.npmjs\.org/i.match?(url)
    end

    def find_versions(url, regex = nil)
      %r{registry\.npmjs\.org/(?<package_name>.+)/-/}i =~ url

      page_url = "https://www.npmjs.com/package/#{package_name}?activeTab=versions"
      regex ||= %r{href=.*?/package/#{package_name}/v/(\d+(?:\.\d+)+)"}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
