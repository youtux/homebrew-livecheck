class Visp
  livecheck do
    url "https://visp.inria.fr/download/"
    regex(/href=.*?visp-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
