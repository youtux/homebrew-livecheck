# frozen_string_literal: true

module LivecheckStrategy
  module Hackage
    module_function

    def match?(url)
      /(?:downloads|hackage)\.haskell\.org/i.match?(url)
    end

    def find_versions(url, regex = nil)
      /^(?<package_name>.+?)-\d+/i =~ File.basename(url)

      page_url = "https://hackage.haskell.org/package/#{package_name}/src"
      regex ||= %r{<h3>#{package_name}-(.*?)/?</h3>}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
