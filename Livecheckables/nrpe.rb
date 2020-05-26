class Nrpe
  livecheck do
    regex(%r{url=.+?/nrpe-v?(\d+(?:\.\d+)+)\.t})
  end
end
