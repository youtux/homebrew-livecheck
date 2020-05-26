class Proctools
  livecheck do
    regex(%r{url=.+?/proctools/[^/]+/proctools-v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t}i)
  end
end
