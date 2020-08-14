# frozen_string_literal: true

require "open3"

module LivecheckStrategy
  class Git
    PRIORITY = 8

    def self.tag_info(repo_url, filter = nil)
      stdout_str, stderr_str, _status = Open3.capture3(
        { "GIT_TERMINAL_PROMPT" => "0" }, "git", "ls-remote", "--tags", repo_url
      )

      tags_data = { tags: [] }
      tags_data[:messages] = stderr_str.split("\n") unless stderr_str.blank?
      return tags_data if stdout_str.blank?

      stdout_str.gsub!(%r{^.*\trefs/tags/}, "")
      stdout_str.delete_suffix!("^{}")

      tags = stdout_str.split("\n").uniq.sort
      tags.select! { |t| t =~ filter } if filter
      tags_data[:tags] = tags

      tags_data
    end
    private_class_method :tag_info

    def self.match?(url)
      DownloadStrategyDetector.detect(url) <= GitDownloadStrategy
    end

    def self.find_versions(url, regex = nil)
      match_data = { matches: {}, regex: regex, url: url }

      tags_data = tag_info(url, regex)

      if tags_data.key?(:messages)
        match_data[:messages] = tags_data[:messages]
        return match_data if tags_data[:tags].blank?
      end

      tags_only_debian = tags_data[:tags].all? { |tag| tag.start_with?("debian/") }

      tags_data[:tags].each do |tag|
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
