require 'formula'

class BrewLivecheck < Formula
  homepage 'https://github.com/youtux/homebrew-livecheck'
  url 'https://github.com/youtux/homebrew-livecheck/archive/0.1.tar.gz'
  head 'https://github.com/youtux/homebrew-livecheck.git'

  def install
    prefix.install 'bin', 'lib', 'Livecheckables'

    bin.install 'bin/brew-livecheck.rb'
    (bin + 'brew-livecheck.rb').chmod 0755
  end
end
