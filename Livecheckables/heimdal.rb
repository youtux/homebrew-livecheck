class Heimdal
  livecheck :url   => "https://github.com/heimdal/heimdal/releases",
            :regex => %r{Latest.*?href="/heimdal/heimdal/tree/heimdal-([0-9\.]+)"}m
end
