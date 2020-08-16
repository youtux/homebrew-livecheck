class Fatsort
  livecheck do
    url :stable
    regex(%r{url=.*?/fatsort[._-]v?(\d+(?:\.\d+)+)\.\d+\.t}i)
  end
end
