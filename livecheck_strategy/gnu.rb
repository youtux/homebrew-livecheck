# frozen_string_literal: true

module LivecheckStrategy
  class Gnu
    NAME = name.demodulize
    NICE_NAME = "GNU"

    PROJECT_NAME_REGEXES = [
      %r{/(?:software|gnu)/(.*?)/},
      %r{//(.*?)\.gnu\.org(?:/)?$},
    ].freeze
    private_constant :PROJECT_NAME_REGEXES

    SPECIAL_CASES = %w[
      avrdude
      clisp
      cvs
      dvdrtools
      icoutils
      kawa
      lzip
      mit-scheme
      numdiff
      oath-toolkit
    ].freeze
    private_constant :SPECIAL_CASES

    def self.match?(url)
      url.include?("gnu.org") && SPECIAL_CASES.none? { |sc| url.include? sc }
    end

    def self.find_versions(url, regex = nil)
      match_list = PROJECT_NAME_REGEXES.map { |r| url.match(r) }.compact
      return { :matches => {}, :regex => regex, :url => url } if match_list.empty?

      puts "\nMultiple project names found: #{match_list}\n" if match_list.length > 1 && Homebrew.args.debug?

      project_name = match_list[0][1]

      page_url = "http://ftp.gnu.org/gnu/#{project_name}/?C=M&O=D"
      regex ||= /#{project_name}-(\d+(?:\.\d+)*)/

      PageMatch.find_versions(page_url, regex)
    end
  end
end
