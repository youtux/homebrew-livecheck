class Varnish
  livecheck do
    url "https://varnish-cache.org/releases/"
    regex(%r{href="\.\./_downloads/varnish-([0-9,.]+)\.t})
  end
end
