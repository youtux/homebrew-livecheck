class Libupnp
  livecheck do
    url :stable
    regex(/^release-(\d+(?:\.\d+)+)$/)
  end
end
