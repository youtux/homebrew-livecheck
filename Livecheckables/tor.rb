class Tor
  livecheck do
    url "https://dist.torproject.org/"
    regex(/tor[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
