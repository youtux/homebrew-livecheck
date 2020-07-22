class Tor
  livecheck do
    url "https://dist.torproject.org/"
    regex(/tor-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
