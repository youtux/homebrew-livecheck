class Libgsm
  livecheck do
    url "http://www.quut.com/gsm/"
    regex(%r{href=".*?/gsm-([0-9.]+)\.t})
  end
end
