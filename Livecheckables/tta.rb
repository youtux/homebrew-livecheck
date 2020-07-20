class Tta
  livecheck do
    url :stable
    regex(%r{url=.*?/libtta-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
