class Nrpe
  livecheck do
    url :stable
    regex(%r{url=.+?/nrpe-v?(\d+(?:\.\d+)+)\.t})
  end
end
