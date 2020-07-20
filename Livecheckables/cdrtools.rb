class Cdrtools
  livecheck do
    url :stable
    regex(%r{url=.*?/cdrtools-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
