class Libspnav
  livecheck do
    url :stable
    regex(%r{url=.*?/libspnav-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
