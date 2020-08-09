class Itpp
  livecheck do
    url :stable
    regex(%r{url=.*?/itpp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
