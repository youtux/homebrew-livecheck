class TraefikAT1
  livecheck do
    url "https://github.com/containous/traefik.git"
    regex(/^v?(1(?:\.\d+)+)$/i)
  end
end
