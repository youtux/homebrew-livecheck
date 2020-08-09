class Libmaa
  livecheck do
    url :stable
    regex(%r{url=.*?/libmaa[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
