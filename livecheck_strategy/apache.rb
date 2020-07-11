# frozen_string_literal: true

module LivecheckStrategy
  class Apache
    NAME = name.demodulize

    def self.match?(url)
      %r{www\.apache\.org/dyn}.match?(url)
    end

    def self.find_versions(url, regex = nil)
      path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]

      page_url = "https://archive.apache.org/dist/#{path}/"
      regex ||= /href="#{Regexp.escape(prefix)}(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
