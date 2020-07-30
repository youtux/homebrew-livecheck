class Libspnav
  livecheck do
    url :stable
    regex(%r{url=.*?/libspnav[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
