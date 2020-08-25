# frozen_string_literal: true

module LivecheckStrategy
  module Bitbucket
    module_function

    def match?(url)
      %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
    end

    def find_versions(url, regex = nil)
      path, kind, prefix, suffix =
        url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/((?:[^/]+?[_-])?)v?\d+(?:\.\d+)+([^/]+)})[1, 4]

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      suffix.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/, "\.t")

      page_url = if kind == "get"
        "https://bitbucket.org/#{path}/downloads/?tab=tags"
      else
        "https://bitbucket.org/#{path}/downloads/"
      end
      regex ||= /href=.*?#{Regexp.escape(prefix)}v?(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
