class Bind
  livecheck :url => "https://www.isc.org/downloads/",
            :regex => /Current-Stable.*?href=".*?bind-([A-Za-z0-9\.\-]+)\.t/m
end
