class DockerSwarm
  livecheck :url => "https://github.com/docker/swarm/releases",
            :regex => %r{href="/docker/swarm/tree/v?([0-9\.]+)"}
end
