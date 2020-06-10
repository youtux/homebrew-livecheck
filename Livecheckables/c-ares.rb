class CAres
  livecheck do
    url :homepage
    regex(%r{href="/download/c-ares-([0-9]+\.[0-9]+\.[0-9]+)\.tar\.gz"})
  end
end
