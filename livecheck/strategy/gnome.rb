# frozen_string_literal: true

module LivecheckStrategy
  class Gnome
    NICE_NAME = "GNOME"

    def self.match?(url)
      /download\.gnome\.org/.match?(url)
    end

    def self.find_versions(url, regex = nil)
      package_name = url.match(%r{/sources/(.*?)/})[1]

      page_url = "https://download.gnome.org/sources/#{package_name}/cache.json"
      # Only match versions with an even-numbered minor (except x.90+)
      regex ||= /#{Regexp.escape(package_name)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
