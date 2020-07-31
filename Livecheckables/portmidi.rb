class Portmidi
  livecheck do
    url :stable
    regex(%r{url=.*?/portmidi-src[._-]v?(\d+)\.}i)
  end
end
