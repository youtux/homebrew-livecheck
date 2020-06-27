# frozen_string_literal: true

module LivecheckStrategy
  class Gnome
    NICE_NAME = "GNOME"
    NAME = NICE_NAME.downcase

    # Formulae that do not use GNOME's "even-numbered minor is stable" scheme
    # "libart_lgpl" is the package name for libart
    GNOME_DEVEL_ALLOWLIST = %w[
      gcab
      gtk-doc
      gtk-mac-integration
      libart_lgpl
      libepoxy
    ].freeze

    def self.match?(url)
      /download\.gnome\.org/.match?(url)
    end

    def self.find_versions(url, regex)
      package = url.match(%r{/sources/(.*?)/})[1]
      page_url = "https://download.gnome.org/sources/#{package}/cache.json"

      # Restrict versions to even numbered minor versions (except x.90+)
      regex ||= if GNOME_DEVEL_ALLOWLIST.include?(package)
        /#{Regexp.escape(package)}-(\d+(?:\.\d+)+)\.t/
      else
        /#{Regexp.escape(package)}-(\d+\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/
      end

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
