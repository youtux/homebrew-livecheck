class Portmidi
  livecheck do
    url :stable
    regex(%r{url=.+?/portmidi-src-(\d+)\.}i)
  end
end
