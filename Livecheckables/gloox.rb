class Gloox
  livecheck do
    url :homepage
    regex(%r{Latest stable version.*?/gloox-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
