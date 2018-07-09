class Wine
  livecheck :url => "https://www.winehq.org/",
            :regex => %r{Stable:.*?href="/announce/3.0.*?">Wine&nbsp;([0-9\.]+)<}m
end
