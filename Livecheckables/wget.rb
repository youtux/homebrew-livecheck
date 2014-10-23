require 'formula'
require 'livecheck/utils'

class Wget
  def livecheck
    git_tags(head.url).map { |tag| Version.new(tag.sub(/^v/, '')) }.max
  end
end
