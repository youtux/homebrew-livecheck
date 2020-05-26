class Ledit
  livecheck do
    url "http://pauillac.inria.fr/~ddr/ledit/"
    regex(/current .*? is ([0-9\.]+) /)
  end
end
