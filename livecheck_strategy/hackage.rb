# frozen_string_literal: true

module LivecheckStrategy
  class Hackage
    NAME = name.demodulize

    def self.match?(url)
      /hackage\.haskell\.org/.match?(url)
    end

    def self.find_versions(url, regex = nil)
      package_name = ((url.split("/")[4]).split("-")[0..-2]).join("-")

      page_url = "https://hackage.haskell.org/package/#{package_name}/src"
      regex ||= %r{<h3>#{package_name}-(.*?)/?</h3>}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
