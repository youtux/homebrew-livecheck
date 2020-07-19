class Tor
  livecheck do
    url "https://dist.torproject.org/"
    regex(/tor-([0-9.]+)\.t/i)
  end
end
