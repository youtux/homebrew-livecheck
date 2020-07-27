# frozen_string_literal: true

require "open-uri"

module LivecheckStrategy
  class Xorg
    NAME = name.demodulize.freeze
    NICE_NAME = "X.Org"

    @page_data = {}

    def self.match?(url)
      %r{[./]x\.org.*?/individual/|freedesktop\.org/(?:archive|dist|software)/}i.match?(url)
    end

    def self.find_versions(url, regex)
      file_name = File.basename(url)
      return { matches: {}, regex: regex, url: url } unless file_name.include?("-")

      package_name = file_name.match(/^(.*)-\d+/)[1]

      page_url = url.sub("x.org/pub/", "x.org/archive/").delete_suffix(file_name)
      regex ||= /href=.*?#{package_name}[._-]v?(\d+(?:\.\d+)+)\.t/

      match_data = { matches: {}, regex: regex, url: page_url }

      # Cache responses to avoid unnecessary duplicate fetches
      @page_data[page_url] = URI.open(page_url).read unless @page_data.key?(page_url)

      matches = @page_data[page_url].scan(regex)
      matches.map(&:first).uniq.each do |match|
        match_data[:matches][match] = Version.new(match)
      end

      match_data
    end
  end
end
