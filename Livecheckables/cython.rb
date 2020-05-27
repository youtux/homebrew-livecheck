class Cython
  livecheck do
    url "https://pypi.org/simple/cython/"
    regex(%r{href=".*?/Cython-([0-9\.]+)\.t})
  end
end
