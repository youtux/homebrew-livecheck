class CAres
  livecheck do
    url "https://c-ares.haxx.se/"
    regex(%r{href="/download/c-ares-([0-9]+\.[0-9]+\.[0-9]+)\.tar\.gz"})
  end
end
