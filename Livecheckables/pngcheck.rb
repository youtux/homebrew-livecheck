class Pngcheck
  livecheck do
    url :stable
    regex(%r{url=.*?/pngcheck[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
