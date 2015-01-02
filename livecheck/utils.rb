require "net/http"

def git_tags repo_url
  out = `git ls-remote --tags #{repo_url}`
  out.gsub!(/^.*\trefs\/tags\//, "")
  out.gsub!(/\^\{\}$/, "")
  return out.split("\n").uniq.sort
end

def page_match(url, pattern)
  page = Net::HTTP.get(URI(url))
  return version = page.match(pattern)[1]
end