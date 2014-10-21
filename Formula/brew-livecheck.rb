require 'formula'

class BrewLivecheck < Formula
  head 'https://github.com/youtux/homebrew-livecheck.git'
  homepage 'https://github.com/youtux/homebrew-livecheck'
  # url 'https://github.com/telemachus/homebrew-desc.git'
  # version '0.1'

  # skip_clean 'bin'

  def install
    bin.install 'brew-desc.rb'
    (bin+'brew-desc.rb').chmod 0755
  end
end
