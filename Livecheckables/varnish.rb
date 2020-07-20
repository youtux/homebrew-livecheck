class Varnish
  livecheck do
    url "https://varnish-cache.org/releases/"
    regex(/href=.*?varnish-([0-9,.]+)\.t/i)
  end
end
