class Clucene
  livecheck do
    url :stable
    regex(/url=.*?clucene-core[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
