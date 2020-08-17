class Xmp
  livecheck do
    url :stable
    regex(%r{url=.*?/xmp[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
