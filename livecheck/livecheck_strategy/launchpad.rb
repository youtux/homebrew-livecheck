# frozen_string_literal: true

module LivecheckStrategy
  class Launchpad
    NAME = name.demodulize

    def self.match?(url)
      /launchpad\.net/.match?(url)
    end

    def self.find_versions(url, regex = nil)
      package_name = url.match(%r{launchpad\.net/([^/]*)})[1]

      page_url = "https://launchpad.net/#{package_name}"
      regex ||= %r{<div class="version">\s*Latest version is (.+)\s*</div>}

      PageMatch.find_versions(page_url, regex)
    end
  end
end
