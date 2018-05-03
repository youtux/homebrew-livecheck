class Algernon
  livecheck :url => "https://github.com/xyproto/algernon/releases",
            :regex => %r{Latest.*?href="/xyproto/algernon/tree/v?([0-9\.]+)}m
end
