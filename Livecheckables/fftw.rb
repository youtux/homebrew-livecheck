class Fftw
  livecheck do
    url "http://fftw.org/"
    regex(%r{latest official release.*? <b>v?(\d+(?:\.\d+)+)</b>}i)
  end
end
