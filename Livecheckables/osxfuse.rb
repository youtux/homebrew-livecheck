require 'formula'
require 'livecheck/utils'

class Osxfuse
  def livecheck
    git_tags(head.url).map { |tag| Version.new(tag.sub(/^osxfuse\-/, '')) }.max
  end
end
