class Madplay
  livecheck do
    url :stable
    regex(%r{url=.*?/madplay[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
