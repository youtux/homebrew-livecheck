class VarnishAT4
  livecheck :url => "https://repo.varnish-cache.org/source/",
            :regex => /href="varnish-(4\.[0-9,\.]+)\.tar/
end
