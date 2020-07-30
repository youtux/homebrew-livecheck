class Cython
  livecheck do
    url :stable
    regex(/href=.*?Cython[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
