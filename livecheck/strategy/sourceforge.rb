# frozen_string_literal: true

module LivecheckStrategy
  module Sourceforge
    module_function

    NICE_NAME = "SourceForge"

    def match?(url)
      /(sourceforge|sf)\.net/.match?(url)
    end

    def find_versions(url, regex = nil)
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
