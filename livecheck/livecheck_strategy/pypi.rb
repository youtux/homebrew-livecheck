# frozen_string_literal: true

module LivecheckStrategy
  class Pypi
    NAME = name.demodulize
    NICE_NAME = "PyPI"

    def self.match?(url)
      /files\.pythonhosted\.org/.match?(url)
    end

    def self.find_versions(url, regex = nil)
      package_name = url[%r{https://files.pythonhosted.org/packages/.*/.*/(.*)-.*}, 1]

      page_url = "https://pypi.org/project/#{package_name}"
      regex ||= /#{package_name} ([0-9.]+)/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
