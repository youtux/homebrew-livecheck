class Libgnt
  livecheck do
    url :stable
    regex(%r{url=.*?/libgnt[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
