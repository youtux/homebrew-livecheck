class TraefikAT1
  livecheck :url   => "https://github.com/containous/traefik.git",
            :regex => /^v?(1(?:\.\d+)+)$/
end
