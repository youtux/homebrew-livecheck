class Varnish
  livecheck :url => "https://repo.varnish-cache.org/source/",
            :regex => /href="varnish-([0-9,\.]+)\.tar/
end
