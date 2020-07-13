class ChocolateDoom
  livecheck do
    url "https://www.chocolate-doom.org/downloads/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
