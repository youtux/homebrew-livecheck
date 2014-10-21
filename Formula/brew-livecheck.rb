require 'formula'

class BrewLivecheck < Formula
  homepage 'https://github.com/youtux/homebrew-livecheck'
  url 'https://github.com/youtux/homebrew-livecheck/archive/0.1.tar.gz'
  head 'https://github.com/youtux/homebrew-livecheck.git'

  skip_clean 'bin'

  def install
    bin.install 'brew-livecheck.rb'
    (bin + 'BrewLivecheck.rb').chmod 0755
  end
end
