# frozen_string_literal: true

module LivecheckStrategy
  class Bitbucket
    NICE_NAME = "Bitbucket"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      %r{bitbucket\.org(/[^/]+){4}\.\w+}.match?(url)
    end

    def self.find_versions(url, regex)
      path, kind, suffix =
        url.match(%r{bitbucket\.org/(.+?)/(get|downloads)/(?:.*?[-_])?v?\d+(?:\.\d+)+([^/]+)})[1, 3]
      page_url = "https://bitbucket.org/#{path}/downloads/"
      page_url << "?tab=tags" if kind == "get"

      regex ||= /(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}"/

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
