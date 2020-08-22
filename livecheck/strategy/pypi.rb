# frozen_string_literal: true

module LivecheckStrategy
  module Pypi
    module_function

    NICE_NAME = "PyPI"

    def match?(url)
      /files\.pythonhosted\.org/.match?(url)
    end

    def find_versions(url, regex = nil)
      /(?<package_name>.*)-.*?
       (?<filename_end>\.tar\.[a-z0-9]+|\.[a-z0-9]+)$/ix =~ File.basename(url)

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      filename_end.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/, "\.t")

      page_url = "https://pypi.org/project/#{package_name.gsub(/%20|_/, "-")}"
      regex ||= %r{href=.*?/packages.*?/#{package_name}[._-]v?(\d+(?:\.\d+)*)#{filename_end}}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
