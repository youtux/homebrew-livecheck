class Unbound
  livecheck :url   => "https://www.unbound.net/downloads/",
            :regex => /href="unbound-([0-9,\.]+)\.tar/
end
