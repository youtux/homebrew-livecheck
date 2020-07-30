class Nrpe
  livecheck do
    url :stable
    regex(%r{url=.*?/nrpe[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
