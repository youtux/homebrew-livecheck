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

def page_match(url, pattern)
  puts "Using page_match(\"#{url}\", \"#{pattern}\")" if ARGV.debug?
  page = Net::HTTP.get(URI(url))
  version = page.match(pattern)[1]
  puts version.class
  return version
end