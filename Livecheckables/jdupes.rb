class Jdupes
  livecheck :url   => "https://github.com/jbruchon/jdupes/releases",
            :regex => %r{Latest.*?href="/jbruchon/jdupes/tree/v?([0-9\.]+)}m
end
