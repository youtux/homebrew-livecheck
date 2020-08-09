class Fatsort
  livecheck do
    url :stable
    regex(%r{url=.*?/fatsort[._-]v?(\d+(?:\.\d+)+)\.[0-9]+\.t}i)
  end
end
