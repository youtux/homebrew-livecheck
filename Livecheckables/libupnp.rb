class Libupnp
  livecheck :url   => "https://github.com/mrjimenez/pupnp/releases",
            :regex => %r{Latest.*?href="/mrjimenez/pupnp/tree/release-([0-9\.]+)}m
end
