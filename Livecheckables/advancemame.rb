class Advancemame
  livecheck :url   => "https://github.com/amadvance/advancemame/releases",
            :regex => %r{Latest.*?href="/amadvance/advancemame/tree/v?([0-9\.]+)}m
end
