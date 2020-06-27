# frozen_string_literal: true

module LivecheckStrategy
  class Gnome
    NICE_NAME = "GNOME"
    NAME = NICE_NAME.downcase

    # Formulae that do not use GNOME's "even-numbered minor is stable" scheme
    # "libart_lgpl" is the package name for libart
    DEV_VERSION_ALLOWLIST = %w[
      gcab
      gtk-doc
      gtk-mac-integration
      libart_lgpl
      libepoxy
    ].freeze
    private_constant :DEV_VERSION_ALLOWLIST

    def self.match?(url)
      /download\.gnome\.org/.match?(url)
    end

    def self.find_versions(url, regex)
      package = url.match(%r{/sources/(.*?)/})[1]

      page_url = "https://download.gnome.org/sources/#{package}/cache.json"
      regex ||= if DEV_VERSION_ALLOWLIST.include?(package)
        /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
      else
        # Only match versions with an even-numbered minor (except x.90+)
        /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
      end

      PageMatch.find_versions(page_url, regex)
    end
  end
end
