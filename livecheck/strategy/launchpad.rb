# frozen_string_literal: true

module LivecheckStrategy
  module Launchpad
    module_function

    def match?(url)
      /launchpad\.net/.match?(url)
    end

    def find_versions(url, regex = nil)
      package_name = url.match(%r{launchpad\.net/([^/]*)})[1]

      page_url = "https://launchpad.net/#{package_name}"
      regex ||= %r{class="[^"]*version[^"]*"[^>]*>\s*Latest version is (.+)\s*</}

      PageMatch.find_versions(page_url, regex)
    end
  end
end
