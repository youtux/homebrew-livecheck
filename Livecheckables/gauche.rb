class Gauche
  livecheck do
    url :stable
    regex(%r{url=.*?/Gauche[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
