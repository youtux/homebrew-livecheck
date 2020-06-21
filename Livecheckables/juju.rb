class Juju
  livecheck do
    url :stable
    regex(/^juju-v?(\d+(?:\.\d+)+)$/i)
  end
end
