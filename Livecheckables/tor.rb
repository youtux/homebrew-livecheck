class Tor
  livecheck :url => "https://dist.torproject.org/",
            :regex => %r{tor-([0-9\.]+)\.tar\.gz}
end
