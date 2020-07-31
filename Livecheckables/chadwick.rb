class Chadwick
  livecheck do
    url :stable
    regex(%r{url=.*?/chadwick[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
