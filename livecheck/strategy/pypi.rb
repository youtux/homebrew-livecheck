# frozen_string_literal: true

module LivecheckStrategy
  module Pypi
    module_function

    NICE_NAME = "PyPI"

    def match?(url)
      /files\.pythonhosted\.org/i.match?(url)
    end

    def find_versions(url, regex = nil)
      /(?<package_name>.*)-.*?
       (?<suffix>\.tar\.[a-z0-9]+|\.[a-z0-9]+)$/ix =~ File.basename(url)

      # Use `\.t` instead of specific tarball extensions (e.g., .tar.gz)
      suffix.sub!(/\.t(?:ar\..+|[a-z0-9]+)$/i, "\.t")

      page_url = "https://pypi.org/project/#{package_name.gsub(/%20|_/, "-")}"
      regex ||= %r{href=.*?/packages.*?/#{package_name}[._-]v?(\d+(?:\.\d+)*)#{suffix}}i

      PageMatch.find_versions(page_url, regex)
    end
  end
end
