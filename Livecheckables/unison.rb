class Unison
  livecheck :url => "https://github.com/bcpierce00/unison/releases",
            :regex => %r{Latest.*?href="/bcpierce00/unison/tree/v?([a-z0-9\.]+)}m
end
