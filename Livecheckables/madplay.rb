class Madplay
  livecheck do
    url :stable
    regex(%r{url=.+?/madplay-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
