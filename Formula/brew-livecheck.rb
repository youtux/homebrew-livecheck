require 'formula'

class BrewLivecheck < Formula
  homepage 'https://github.com/youtux/homebrew-livecheck'
  url 'https://github.com/youtux/homebrew-livecheck.git'
  head 'https://github.com/youtux/homebrew-livecheck.git'
  version '0.1'

  skip_clean 'bin'
  def install
    prefix.install 'bin', 'livecheck', 'Livecheckables'
    (bin+'brew-livecheck.rb').chmod 0755
  end
end
