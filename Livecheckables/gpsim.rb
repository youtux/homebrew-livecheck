class Gpsim
  livecheck do
    url :stable
    regex(%r{url=.*?/gpsim[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
