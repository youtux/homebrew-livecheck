class Wine
  livecheck :url => "https://www.winehq.org/",
            :regex => %r{Stable:</div>.*<div.*<b><a href="/announce/(2.0[0-9\.]+)">}m
end
