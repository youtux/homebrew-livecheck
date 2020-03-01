class Hackrf
  livecheck :url   => "https://github.com/mossmann/hackrf/releases",
            :regex => %r{Latest.*?href="/mossmann/hackrf/tree/v?([0-9\.]+)"}m
end
