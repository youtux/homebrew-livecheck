class BrewLivecheck < Formula
  homepage "https://github.com/youtux/homebrew-livecheck"
  url "https://github.com/youtux/homebrew-livecheck.git"
  head "https://github.com/youtux/homebrew-livecheck.git"
  version "0.5"

  def install
    odie <<-EOS.undent
    Livecheck now uses a new update mechanism, therefore
    the formula is obsolete and will be deleted soon.
    Please run this command to get the latest version of
    brew-livecheck with auto-update:

      brew uninstall brew-livecheck ; brew update && brew tap --repair

    More info at https://github.com/youtux/homebrew-livecheck
    EOS
  end
end
