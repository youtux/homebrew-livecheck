require 'formula'
require 'livecheck/utils'

class MobileShell
  def livecheck
    git_tags(head.url).map { |tag| Version.new(tag.sub(/^mosh\-/, '')) }.max
  end
end
