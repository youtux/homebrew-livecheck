class Gmp
  livecheck do
    url "https://gmplib.org/download/gmp/"
    regex(/href=.*?gmp-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
