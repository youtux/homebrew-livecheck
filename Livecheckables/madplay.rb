class Madplay
  livecheck do
    regex(%r{url=.+?/madplay-v?(\d+(?:\.\d+)+[a-z]?)\.t}i)
  end
end
