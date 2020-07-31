class Proctools
  livecheck do
    url :stable
    regex(%r{url=.*?/proctools/[^/]+/proctools[._-]v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t}i)
  end
end
