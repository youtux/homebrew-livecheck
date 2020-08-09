class Zbar
  livecheck do
    url :stable
    regex(%r{url=.*?/zbar[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
