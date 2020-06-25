# frozen_string_literal: true

module LivecheckStrategy
  class SourceForge
    NICE_NAME = "SourceForge"
    NAME = NICE_NAME.downcase

    SOURCEFORGE_SPECIAL_CASES = %w[
      /avf/
      /bashdb/
      /netpbm/
      bcrypt.sourceforge.net
      e2fsprogs
      foremost.sourceforge.net
      liba52.sourceforge.net
      libwps
      log4cpp
      mikmod
      opencore-amr
      potrace
      remake
    ].freeze

    def self.match?(url)
      /(sourceforge|sf)\.net/.match?(url) &&
        SOURCEFORGE_SPECIAL_CASES.none? { |sc| url.include? sc }
    end

    def self.find_versions(url, regex)
      project_name = if url.include?("/project")
        url.match(%r{/projects?/([^/]+)/})[1]
      elsif url.include?(".net/p/")
        url.match(%r{\.net/p/([^/]+)/})[1]
      else
        url.match(%r{\.net(?::/cvsroot)?/([^/]+)})[1]
      end
      page_url = "https://sourceforge.net/projects/#{project_name}/rss"

      regex ||= %r{url=.+?/#{project_name}/files/.*?[-_/](\d+(?:[-.]\d+)+)[-_/%.]}i

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
