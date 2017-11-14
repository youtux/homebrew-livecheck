class VarnishAT4
  livecheck :url => "https://varnish-cache.org/releases/",
            :regex => %r{href="\.\./_downloads/varnish-(4\.[0-9,\.]+)\.t}
end
