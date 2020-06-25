# frozen_string_literal: true

module LivecheckStrategy
  class Hackage
    NICE_NAME = "Hackage"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      /hackage\.haskell\.org/.match?(url)
    end

    def self.find_versions(url, regex)
      package = ((url.split("/")[4]).split("-")[0..-2]).join("-")
      page_url = "https://hackage.haskell.org/package/#{package}/src"

      regex ||= %r{<h3>#{package}-(.*?)/?</h3>}i

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
