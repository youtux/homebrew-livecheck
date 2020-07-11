# frozen_string_literal: true

module LivecheckStrategy
  class Sourceforge
    NAME = name.demodulize
    NICE_NAME = "SourceForge"

    SPECIAL_CASES = %w[
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
    private_constant :SPECIAL_CASES

    def self.match?(url)
      /(sourceforge|sf)\.net/.match?(url) &&
        SPECIAL_CASES.none? { |sc| url.include? sc }
    end

    def self.find_versions(url, regex = nil)
      project_name = if url.include?("/project")
        url.match(%r{/projects?/([^/]+)/})[1]
      elsif url.include?(".net/p/")
        url.match(%r{\.net/p/([^/]+)/})[1]
      else
        url.match(%r{\.net(?::/cvsroot)?/([^/]+)})[1]
      end

      page_url = "https://sourceforge.net/projects/#{project_name}/rss"
      regex ||= %r{url=.*?/#{project_name}/files/.*?[-_/](\d+(?:[-.]\d+)+)[-_/%.]}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
