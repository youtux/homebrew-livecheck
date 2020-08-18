class Zboy
  livecheck do
    url :stable
    regex(%r{url=.*?/zboy[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
