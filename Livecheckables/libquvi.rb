class Libquvi
  livecheck do
    url :stable
    regex(%r{url=.*?/libquvi[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
