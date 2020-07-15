class Cython
  livecheck do
    url "https://pypi.org/simple/cython/"
    regex(/href=.*?Cython-([0-9.]+)\.t/)
  end
end
