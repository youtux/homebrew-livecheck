class Cdrtools
  livecheck do
    url :stable
    regex(%r{url=.*?/cdrtools[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
