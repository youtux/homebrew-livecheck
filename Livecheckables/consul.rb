class Consul
  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
