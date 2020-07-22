class Babeld
  livecheck do
    url "https://www.irif.fr/~jch/software/files/"
    regex(/href=.*?babeld-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
