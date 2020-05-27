class Babeld
  livecheck do
    url "https://www.irif.fr/~jch/software/files/"
    regex(/href="babeld-([0-9\.]+)\.t/)
  end
end
