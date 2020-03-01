class Uhd
  livecheck :url   => "https://github.com/EttusResearch/uhd/releases",
            :regex => %r{Latest.*?href="/EttusResearch/uhd/tree/v?([0-9\.]+)}m
end
