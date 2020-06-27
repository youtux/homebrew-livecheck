# frozen_string_literal: true

module LivecheckStrategy
  class Gnu
    NICE_NAME = "GNU"
    NAME = NICE_NAME.downcase

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
      url =~ /gnu\.org/ && SPECIAL_CASES.none? { |sc| url.include? sc }
    end

    def self.find_versions(url, regex)
      match_data = { :matches => {}, :regex => regex, :url => url }

      match_list = PROJECT_NAME_REGEXES.map do |r|
        url.match(r)
      end.compact

      puts "\nMultiple project names found: #{match_list}\n" if match_list.length > 1 && Homebrew.args.debug?

      return match_data if match_list.empty?

      project_name = match_list[0][1]
      page_url = "http://ftp.gnu.org/gnu/#{project_name}/?C=M&O=D"
      match_data[:url] = page_url

      regex ||= /#{project_name}-(\d+(?:\.\d+)*)/

      page_matches(page_url, regex).each do |match|
        version = Version.new(match)
        match_data[:matches][match] = version
      end

      match_data
    end
  end
end
