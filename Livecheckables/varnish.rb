class Varnish
  livecheck do
    url "https://varnish-cache.org/releases/"
    regex(/href=.*?varnish-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
