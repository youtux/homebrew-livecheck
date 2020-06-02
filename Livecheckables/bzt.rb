class Bzt
  livecheck do
    url "https://pypi.org/simple/bzt/"
    regex(%r{href=".*?/bzt-([0-9.]+)\.t})
  end
end
