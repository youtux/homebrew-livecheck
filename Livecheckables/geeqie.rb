class Geeqie
  livecheck do
    url "http://www.geeqie.org/"
    regex(%r{href=".*?/geeqie-([0-9.]+)\.t})
  end
end
