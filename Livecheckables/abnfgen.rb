class Abnfgen
  livecheck do
    url "http://www.quut.com/abnfgen/"
    regex(%r{href=.*?/abnfgen-([0-9.]+)\.t})
  end
end
