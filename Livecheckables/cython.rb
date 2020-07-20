class Cython
  livecheck do
    url :stable
    regex(/href=.*?Cython-([0-9.]+)\.t/i)
  end
end
