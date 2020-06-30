class Tivodecode
  livecheck do
    url :stable
    regex(%r{url=.+?/tivodecode-v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t})
  end
end
