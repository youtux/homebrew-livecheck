class Libquvi
  livecheck do
    url :stable
    regex(%r{url=.*?/libquvi-v?(\d+(?:\.\d+)+)\.t})
  end
end
