# frozen_string_literal: true

module LivecheckStrategy
  class Launchpad
    NICE_NAME = "Launchpad"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      /launchpad\.net/.match?(url)
    end

    def self.find_versions(url, regex)
      package = url.match(%r{launchpad\.net/([^/]*)})[1]
      page_url = "https://launchpad.net/#{package}"

      regex ||= %r{<div class="version">\s*Latest version is (.+)\s*</div>}

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
