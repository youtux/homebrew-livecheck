require "net/http"

def git_tags(repo_url, filter=nil)
  raw_tags = `git ls-remote --tags #{repo_url}`
  raw_tags.gsub!(/^.*\trefs\/tags\//, "")
  raw_tags.gsub!(/\^\{\}$/, "")

  tags = raw_tags.split("\n").uniq.sort
  if filter
    tags.select! { |t| t =~ filter}
  end
  return tags
end

def page_matches(url, regex)
  puts %Q[Using page_match("#{url}", "#{regex}")] if ARGV.debug?
  page = open(url).read
  matches = page.scan(regex)
  puts matches if ARGV.debug?
  return matches.map { |version_s| version_s[0] }.uniq
end

