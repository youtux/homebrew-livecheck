class Getdns
  livecheck :url => "https://getdnsapi.net/releases/",
            :regex => /getdns-([0-9\.]+) release/
end
