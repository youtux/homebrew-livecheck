# frozen_string_literal: true

module LivecheckStrategy
  class Git
    NAME = name.demodulize
    PRIORITY = 8

    def self.tag_info(repo_url, filter = nil)
      raw_tags = `GIT_TERMINAL_PROMPT=0 git ls-remote --tags #{repo_url}`
      raw_tags.gsub!(%r{^.*\trefs/tags/}, "")
      raw_tags.delete_suffix!("^{}")

      tags = raw_tags.split("\n").uniq.sort
      tags.select! { |t| t =~ filter } if filter
      tags
    end
    private_class_method :tag_info

    def self.match?(url)
      DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
    end

    def self.find_versions(url, regex = nil)
      tags = tag_info(url, regex)
      tags_only_debian = tags.all? { |tag| tag.start_with?("debian/") }

      match_data = { :matches => {}, :regex => regex, :url => url }
      tags.each do |tag|
        # Skip tag if it has a 'debian/' prefix and upstream does not do only
        # 'debian/' prefixed tags
        next if tag =~ %r{^debian/} && !tags_only_debian

        captures = regex.is_a?(Regexp) ? tag.scan(regex) : []
        tag_cleaned = if captures[0].is_a?(Array)
          captures[0][0] # Extract the first capture group
        else
          tag[/\D*(.*)/, 1] # Remove non-digits from the beginning of the tag
        end

        match_data[:matches][tag] = Version.new(tag_cleaned)
      rescue TypeError
        nil
      end

      match_data
    end
  end
end
