class Ice
  livecheck :url => "https://github.com/zeroc-ice/ice/releases",
            :regex => %r{latest.*?href="/zeroc-ice/ice/tree/v?([0-9\.]+)}m
end
