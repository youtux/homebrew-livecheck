class Tcc
  livecheck do
    url "https://download.savannah.nongnu.org/releases/tinycc/"
    regex(/href=.*?tcc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
