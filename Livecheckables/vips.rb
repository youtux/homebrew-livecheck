class Vips
  livecheck :url => "https://github.com/jcupitt/libvips/releases",
            :regex => %r{Latest.*?href="/jcupitt/libvips/tree/v?([0-9\.]+)}m
end
