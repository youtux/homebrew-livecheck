class Pngcrush
  livecheck do
    url :stable
    regex(%r{url=.*?/pngcrush[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
