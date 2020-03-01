class Ldc
  livecheck :url   => "https://github.com/ldc-developers/ldc/releases",
            :regex => %r{Latest.*?href="/ldc-developers/ldc/tree/v?([0-9\.]+)}m
end
