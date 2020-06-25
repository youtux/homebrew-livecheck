require "open-uri"

def checkable_urls(formula)
  urls = []
  urls << formula.head.url if formula.head
  if formula.stable
    urls << formula.stable.url
    urls.concat(formula.stable.mirrors)
  end
  urls << formula.homepage if formula.homepage

  urls.compact
end

def formula_name(formula)
  Homebrew.args.full_name? ? formula.full_name : formula
end

def git_tags(repo_url, filter = nil)
  raw_tags = `GIT_TERMINAL_PROMPT=0 git ls-remote --tags #{repo_url}`
  raw_tags.gsub!(%r{^.*\trefs/tags/}, "")
  raw_tags.delete_suffix!("^{}")

  tags = raw_tags.split("\n").uniq.sort
  tags.select! { |t| t =~ filter } if filter
  tags
end

def page_matches(url, regex)
  page = URI.open(url).read
  matches = page.scan(regex)
  puts "\nMatched Text on Page:\n", matches.join(", ") if Homebrew.args.debug? && !matches.empty?
  matches.map(&:first).uniq
end
