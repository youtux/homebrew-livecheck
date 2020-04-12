require "open-uri"

def filter_versions(match_version_map, versions_hash)
  filter_parts = versions_hash.key?(:parts) ? versions_hash[:parts] : []

  if filter_parts.empty?
    has_major_part = versions_hash.key?(:major)
    has_minor_part = versions_hash.key?(:minor)
    has_patch_part = versions_hash.key?(:patch)
    has_other_part = versions_hash.key?(:other)

    filter_parts.push(has_major_part ? versions_hash[:major] : nil)

    if has_minor_part
      filter_parts.push(versions_hash[:minor])
    elsif has_patch_part || has_other_part
      filter_parts.push(nil)
    end

    filter_parts.push(versions_hash[:patch]) if has_patch_part

    if has_other_part && versions_hash[:other].is_a?(Array)
      versions_hash[:other].each { |other_part| filter_parts.push(other_part) }
    elsif has_other_part
      filter_parts.push(versions_hash[:other])
    end
  end

  puts "filter_parts: #{filter_parts}" if Homebrew.args.debug?

  match_version_map.select! do |_match, version|
    comparison = versions_hash.key?(:comparison) ? versions_hash[:comparison] : nil

    is_good_version = true
    version.tokens.each_index do |i|
      break if filter_parts.length < i + 1

      part = filter_parts[i]
      if part.is_a?(Hash)
        part_comparison = part.key?(:comparison) ? part[:comparison] : nil
        part_version = part.key?(:version) ? part[:version] : nil
      else
        part_comparison = nil
        part_version = part
      end
      next if part_version.nil?

      token = version.tokens[i]
      result = case (!part_comparison.nil? ? part_comparison : comparison)
      when :eq
        token.value == part_version
      when :lte
        token.value <= part_version
      when :gte
        token.value >= part_version
      when :lt
        token.value < part_version
      when :gt
        token.value > part_version
      when :neq
        token.value != part_version
      when :in
        next unless part_version.is_a?(Array)

        part_version.include?(token.value)
      when :nin
        next unless part_version.is_a?(Array)

        !part_version.include?(token.value)
      else
        next
      end

      if result == false
        is_good_version = false
        break
      end
    end

    is_good_version
  end
end

def git_tags(repo_url, filter = nil)
  raw_tags = `git ls-remote --tags #{repo_url}`
  raw_tags.gsub!(%r{^.*\trefs/tags/}, "")
  raw_tags.gsub!(/\^\{\}$/, "")

  tags = raw_tags.split("\n").uniq.sort
  tags.select! { |t| t =~ filter } if filter
  tags
end

# Check if upstream only does 'debian/' prefixed tags
def git_tags_only_debian?(tags)
  tags.each do |tag|
    return false unless tag.match?(%r{^debian/})
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
