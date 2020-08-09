class Simutrans
  livecheck do
    url :stable
    regex(%r{url=.*?/simutrans-src[._-]v?(\d+(?:[-_.]\d+)+)\.(?:t|zip)}i)
  end
end
