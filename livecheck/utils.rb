require "open-uri"

def git_tags(repo_url, filter = nil)
  raw_tags = `git ls-remote --tags #{repo_url}`
  raw_tags.gsub!(%r{^.*\trefs/tags/}, "")
  raw_tags.delete_suffix!("^{}")

  tags = raw_tags.split("\n").uniq.sort
  tags.select! { |t| t =~ filter } if filter
  tags
end

# Check if upstream only does 'debian/' prefixed tags
def git_tags_only_debian?(tags)
  tags.each do |tag|
    return false unless tag.start_with?("debian/")
  end
  true
end

def page_matches(url, regex)
  puts %Q[Using page_match("#{url}", "#{regex}")] if Homebrew.args.debug?
  page = URI.open(url).read
  matches = page.scan(regex)
  puts matches.join(", ") if Homebrew.args.debug?
  matches.map(&:first).uniq
end
