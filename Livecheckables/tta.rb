class Tta
  livecheck do
    url :stable
    regex(%r{url=.*?/libtta[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
