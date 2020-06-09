class Wandio
  livecheck do
    url :homepage
    regex(%r{href=".*?/wandio-([0-9.]+)\.t})
  end
end
