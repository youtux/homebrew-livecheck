require "utils"

def version_euristic urls, regex=nil
  urls.each do |url|
    # Try using GIT versions
    if DownloadStrategyDetector.detect(url) == GitDownloadStrategy
      puts "Possible git repo detected at #{url}" if ARGV.debug?

      versions = git_tags(url, regex).map do |tag|
        begin
          Version.detect(url, {:tag => tag})
        rescue TypeError
          nil
        end
      end.compact

      return versions.max unless versions.empty?
      puts "Unable to get version from git tags" if ARGV.debug?
    end
    
    # Try to see if it's a SourceForge repo
    if url =~ /(sourceforge\.net|sf\.net)/
      project_name = url.match(/sourceforge.net\/project\/(.*?)\//)[1]

      if ARGV.debug?
        puts "Possible SourceForge repo detected at #{url}"
        puts "Using project_name: #{project_name}"
      end

      versions = sourceforge_versions(project_name, regex).map do |version_s|
        Version.new(version_s)
      end

      return versions.max unless versions.empty?
      puts "Unable to get version from SourceForge" if ARGV.debug?
    end

    # Try standard page match
    if regex
      versions = page_matches(url, regex)
      return versions.max unless versions.empty?
      puts "Unable to get version from page regex" if ARGV.debug?
    end
  end

  raise TypeError, "Unable to get versions for #{Tty.blue}#{name}#{Tty.reset}"
end

