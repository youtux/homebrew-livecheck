class Bind
  livecheck :url => "https://www.isc.org/downloads/",
            :regex => /Early Deployment.*?href=".*?bind-([A-Za-z0-9\.\-]+)\.t/m
end
