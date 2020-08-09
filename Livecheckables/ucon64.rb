class Ucon64
  livecheck do
    url :stable
    regex(%r{url=.*?/ucon64[._-]v?(\d+(?:\.\d+)+)-src\.t}i)
  end
end
