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

      match_data = { :matches => {}, :regex => regex, :url => page_url }
      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
