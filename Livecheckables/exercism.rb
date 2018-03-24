class Exercism
  livecheck :url => "https://github.com/exercism/cli/releases",
            :regex => %r{Latest.*?href="/exercism/cli/tree/v?([0-9\.]+)}m
end
