require 'formula'
require 'livecheck/utils'

class Osxfuse
  def livecheck
    tags = git_tags(head.url).map do |tag|
        Version.new(tag.sub(/^osxfuse\-/, ''))
    end
    tags.max
  end
end
