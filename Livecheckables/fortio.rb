class Fortio
  livecheck :url => "https://github.com/istio/fortio/releases",
            :regex => %r{Latest.*?href="/istio/fortio/tree/v?([0-9\.]+)}m
end
