# frozen_string_literal: true

module LivecheckStrategy
  class PyPI
    NICE_NAME = "PyPI"
    NAME = NICE_NAME.downcase

    def self.match?(url)
      /files\.pythonhosted\.org/.match?(url)
    end

    def self.find_versions(url, regex)
      package = url[%r{https://files.pythonhosted.org/packages/.*/.*/(.*)-.*}, 1]
      page_url = "https://pypi.org/project/#{package}"

      regex ||= /#{package} ([0-9.]+)/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
