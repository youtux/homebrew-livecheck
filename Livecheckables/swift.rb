class Swift
  livecheck :url => "https://swift.org/download/",
            :regex => %r{Releases<.*?>Swift ([0-9\.]+)<}m
end
