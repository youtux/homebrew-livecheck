def git_tags repo_url
  out = `git ls-remote --tags #{repo_url}`
  out.gsub!(/^.*\trefs\/tags\//, "")
  out.gsub!(/\^\{\}$/, "")
  out.split("\n").uniq.sort
end
