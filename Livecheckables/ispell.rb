class Ispell
  livecheck do
    url "https://www.cs.hmc.edu/~geoff/ispell.html"
    regex(/href=.*?ispell-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
