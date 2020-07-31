class Gpcslots2
  livecheck do
    url :stable
    regex(%r{url=.*?/gpcslots2[._-]v?(\d+(?:[-_.]\d+)+[a-z]?)}i)
  end
end
