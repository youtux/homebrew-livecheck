class Geeqie
  livecheck do
    url :homepage
    regex(%r{href=".*?/geeqie-([0-9.]+)\.t})
  end
end
