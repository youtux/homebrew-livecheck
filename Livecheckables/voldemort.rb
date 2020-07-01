class Voldemort
  livecheck do
    url :stable
    regex(/(?:release-)?v?(\d+(?:\.\d+)+)(?:-cutoff)?/)
  end
end
