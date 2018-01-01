class Ldc
  livecheck :url => "https://github.com/ldc-developers/ldc/releases",
            :regex => %r{href="/ldc-developers/ldc/tree/v?([0-9\.]+)}
end
