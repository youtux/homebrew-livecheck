class Teleport
  livecheck :url => "https://github.com/gravitational/teleport/releases",
            :regex => %r{Latest.*?href="/gravitational/teleport/tree/v?([0-9\.]+)}m
end
