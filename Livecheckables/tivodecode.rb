class Tivodecode
  livecheck do
    url :stable
    regex(%r{url=.*?/tivodecode[._-]v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t}i)
  end
end
