class Docbook2x
  livecheck do
    url :stable
    regex(%r{url=.*?/docbook2X[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
