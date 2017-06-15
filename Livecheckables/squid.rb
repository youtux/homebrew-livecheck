class Squid
  livecheck :url => "http://www.squid-cache.org/Versions/v3/3.5/",
            :regex => /squid-([0-9.]+)-RELEASENOTES\.html/
end
