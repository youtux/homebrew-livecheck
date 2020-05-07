def github_preprocess(url)
  github_special_cases = %w[
    api.github.com
    /latest
    mednafen
    camlp5
    kotlin
    osrm-backend
    prometheus
    pyenv-virtualenv
    sysdig
    shairport-sync
    yuicompressor
  ].freeze

  # Check for GitHub repos on github.com, not AWS
  url.sub!("github.s3.amazonaws.com", "github.com") if url.include?("github")

  puts "Trying with url #{url}" if Homebrew.args.debug?
  # Use repo from GitHub or GitLab inferred from download URL
  if url.include?("github.com") && github_special_cases.none? { |sc| url.include? sc }
    if url.include? "archive"
      url = url.sub(%r{/archive/.*}, ".git") if url.include? "github"
    elsif url.include? "releases"
      url = url.sub(%r{/releases/.*}, ".git")
    elsif url.include? "downloads"
      url = Pathname.new(url.sub(%r{/downloads(.*)}, "\\1")).dirname.to_s+".git"
    elsif !url.end_with?(".git")
      # Truncate the URL at the user/repo part, if possible
      github_repo_url = url[%r{((?:[a-z]+://)?github.com/[^/]+/[^/#]+)}]
      url = github_repo_url unless github_repo_url.nil?

      url = url[0..-2] if url.end_with?("/")

      url += ".git"
    end
  elsif url.include?("/-/archive/")
    url = url.sub(%r{/-/archive/.*$}i, ".git")
  end

  url
end

def github_heuristics(url, regex = nil)
  puts "Possible git repo detected at #{url}" if Homebrew.args.debug?

  tags = git_tags(url, regex)
  tags_only_debian = tags.all? { |tag| tag.startwith?("debian/") }

  # Skip tags prefixed with 'debian/' if there're non-debian tags
  tags.reject! { |tag| tag =~ %r{debian/} && !tags_only_debian }

  tags.map do |tag|
    captures = tag.scan(regex) if regex
    tag_cleaned = if captures &&
                     !captures.empty? &&
                     captures[0].is_a?(Array)
      # Use the first capture group as the version
      captures[0][0]
    else
      # Remove any character before the first number
      tag[/\D*(.*)/, 1]
    end
    [tag, Version.new(tag_cleaned)]
  rescue TypeError
    nil
  end.compact.to_h
end
