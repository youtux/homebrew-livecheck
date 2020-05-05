class Unbound
  livecheck :url   => "https://nlnetlabs.nl/downloads/unbound/",
            :regex => /href=.+?unbound-v?(\d+(?:\.\d+)+)\.t/
end
