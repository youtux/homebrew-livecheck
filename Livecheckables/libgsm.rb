class Libgsm
  livecheck do
    url :homepage
    regex(%r{href=".*?/gsm-([0-9.]+)\.t})
  end
end
