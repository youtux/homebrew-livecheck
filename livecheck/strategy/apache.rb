# frozen_string_literal: true

module LivecheckStrategy
  module Apache
    module_function

    def match?(url)
      %r{www\.apache\.org/dyn}.match?(url)
    end

    def find_versions(url, regex = nil)
      path, prefix, suffix = url.match(%r{path=(.+?)/([^/]*?)\d+(?:\.\d+)+(/|[^/]*)})[1, 3]

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      suffix.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/, "\.t")

      page_url = "https://archive.apache.org/dist/#{path}/"
      regex ||= /href=["']?#{Regexp.escape(prefix)}v?(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
