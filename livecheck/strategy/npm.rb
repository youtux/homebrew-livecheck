# frozen_string_literal: true

module LivecheckStrategy
  # The `npm` strategy identifies versions of software at
  # registry.npmjs.org by checking the listed versions for a package.
  #
  # npm URLs take one of the following formats:
  # * `https://registry.npmjs.org/example/-/example-1.2.3.tgz`
  # * `https://registry.npmjs.org/@example/example/-/example-1.2.3.tgz`
  #
  # The default regex matches URLs in the `href` attributes of version tags
  # on the "Versions" tab of the package page.
  module Npm
    module_function

    NICE_NAME = "npm"

    # The `Regexp` used to determine if the strategy applies to the URL.
    URL_MATCH_REGEX = /registry\.npmjs\.org/i.freeze

    # Whether the strategy can be applied to the provided URL.
    # @param url [String] the URL to match against
    # @return [Boolean]
    def match?(url)
      URL_MATCH_REGEX.match?(url)
    end

    # Generates a URL and regex (if one isn't provided) and passes them
    # to the `PageMatch#find_versions` method to identify versions in the
    # content.
    # @param url [String] the URL of the content to check
    # @param regex [Regexp] a regex used for matching versions in content
    # @return [Hash]
    def find_versions(url, regex = nil)
      %r{registry\.npmjs\.org/(?<package_name>.+)/-/}i =~ url

      page_url = "https://www.npmjs.com/package/#{package_name}?activeTab=versions"

      # Example regexes:
      # * `%r{href=.*?/package/example/v/(\d+(?:\.\d+)+)"}i`
      # * `%r{href=.*?/package/@example/example/v/(\d+(?:\.\d+)+)"}i`
      regex ||= %r{href=.*?/package/#{Regexp.escape(package_name)}/v/(\d+(?:\.\d+)+)"}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
