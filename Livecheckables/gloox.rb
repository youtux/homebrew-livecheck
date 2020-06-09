class Gloox
  livecheck do
    url :homepage
    regex(%r{Latest stable version.*?/gloox-([0-9.]+)\.t})
  end
end
