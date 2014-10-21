require 'formula'

class BrewLivecheck < Formula
  homepage 'https://github.com/youtux/homebrew-livecheck'
  url 'https://github.com/youtux/homebrew-livecheck/archive/0.1.tar.gz'
  sha1 'c0886e147a9459f4c5e79ef1030d07c8e39a5b70'
  head 'https://github.com/youtux/homebrew-livecheck.git'

  skip_clean 'bin'

  def install
    bin.install 'brew-livecheck.rb'
    (bin + 'BrewLivecheck.rb').chmod 0755
  end
end
