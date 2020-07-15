class Chadwick
  livecheck do
    url :stable
    regex(%r{url=.*?/chadwick-v?(\d+(?:\.\d+)+)\.t})
  end
end
