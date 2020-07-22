class Cython
  livecheck do
    url :stable
    regex(/href=.*?Cython-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
