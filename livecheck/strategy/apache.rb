# frozen_string_literal: true

module LivecheckStrategy
  # The `Apache` strategy identifies versions of software at apache.org
  # by checking directory listing pages.
  #
  # Apache URLs start with `https://www.apache.org/dyn/closer.lua?path=`.
  #
  # The `path` parameter takes one of the following formats:
  # * `example/1.2.3/example-1.2.3.tar.gz`
  # * `example/example-1.2.3/example-1.2.3.tar.gz`
  # * `example/example-1.2.3-bin.tar.gz`
  #
  # When the `path` contains a version directory (e.g., `/1.2.3/`,
  # `/example-1.2.3/`, etc.), the default regex matches numeric versions
  # in directory names. Otherwise, the default regex matches numeric
  # versions in filenames.
  module Apache
    module_function

    # The `Regexp` used to determine if the strategy applies to the URL.
    URL_MATCH_REGEX = %r{www\.apache\.org/dyn/.+path=.+}i.freeze

    # Whether the strategy can be applied to the provided URL.
    # @param url [String] the URL to match against
    # @return [Boolean]
    def match?(url)
      URL_MATCH_REGEX.match?(url)
    end

    # Generates a URL and regex (if one isn't provided) and passes them
    # to the `PageMatch#find_versions` method to identify versions in the
    # content.
    # @param url [String] the URL of the content to check
    # @param regex [Regexp] a regex used for matching versions in content
    # @return [Hash]
    def find_versions(url, regex = nil)
      %r{
        path=
        (?<path>.+?)/ # Path to directory of files or version directories
        (?<prefix>[^/]*?) # Any text in filename or directory before version
        v?\d+(?:\.\d+)+ # The numeric version
        (?<suffix>/|[^/]*) # Any text in filename or directory after version
      }ix =~ url

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      suffix.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/i, "\.t")

      # Example URL: `https://archive.apache.org/dist/example/`
      page_url = "https://archive.apache.org/dist/#{path}/"

      # Example directory regex: `%r{href=["']?v?(\d+(?:\.\d+)+)/}i`
      # Example file regexes:
      # * `/href=["']?example-v?(\d+(?:\.\d+)+)\.t/i`
      # * `/href=["']?example-v?(\d+(?:\.\d+)+)-bin\.zip/i`
      regex ||= /href=["']?#{Regexp.escape(prefix)}v?(\d+(?:\.\d+)+)#{Regexp.escape(suffix)}/i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
