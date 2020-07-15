class Djview4
  livecheck do
    url :stable
    regex(%r{url=.*?/djview-v?(\d+(?:\.\d+)+)\.t})
  end
end
