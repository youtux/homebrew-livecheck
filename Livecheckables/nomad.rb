class Nomad
  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
