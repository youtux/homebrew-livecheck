class Freetype
  livecheck do
    url :stable
    regex(%r{url=.*?freetype2/v?(\d+(?:\.\d+)+)/}i)
  end
end
