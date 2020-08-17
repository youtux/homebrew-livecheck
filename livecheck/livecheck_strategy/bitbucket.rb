# frozen_string_literal: true

module LivecheckStrategy
  class Bitbucket
    def self.match?(url)
      %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
    end

    def self.find_versions(url, regex = nil)
      path, kind, suffix =
        url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/(?:.*?[-_])?v?\d+(?:\.\d+)+([^/]+)})[1, 3]

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      suffix.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/, "\.t")

      page_url = if kind == "get"
        "https://bitbucket.org/#{path}/downloads/?tab=tags"
      else
        "https://bitbucket.org/#{path}/downloads/"
      end
      regex ||= /href=.*?v?(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
