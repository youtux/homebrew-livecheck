class Fftw
  livecheck do
    url "http://fftw.org/"
    regex(%r{latest official release.*? <b>([0-9.]+)</b>})
  end
end
