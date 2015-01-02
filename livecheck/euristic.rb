require "utils"

def try_euristic formula
  urls_to_try = []
  urls_to_try << formula.head.url if formula.head
  urls_to_try << formula.stable.url if formula.stable
  urls_to_try.concat(formula.mirrors) if formula.respond_to? :mirrors

  urls_to_try.compact.each do |url|
    # Try using GIT versions
    if DownloadStrategyDetector.detect(url) == GitDownloadStrategy
      puts "Possible git repo detected at #{url}" if ARGV.debug?

      versions = git_tags(head.url).map do |tag|
        begin
          Version.detect(head.url, {:tag => tag})
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

      versions = sourceforge_versions(project_name)

      return versions.max unless versions.empty?
      puts "Unable to get version from SourceForge" if ARGV.debug?
    end
  end

  raise TypeError, "Unable to get versions for #{Tty.blue}#{name}#{Tty.reset}"
end

def sourceforge_versions project_name
  url = "http://sourceforge.net/api/file/index/project-name/#{project_name}/rss"
  puts "curl -L \"#{url}\"" if ARGV.debug?
  page = `curl -L "#{url}"`
  matches = page.scan(/\/projects\/#{project_name}\/files\/.*?[a-zA-Z.]*([a-zA-Z0-9.]+\.[a-zA-Z0-9.]+)\.(tar\..*?|zip)\/download/)
  # puts matches if ARGV.debug?

  return matches.map { |version_s| Version.new(version_s[0]) }.uniq
end