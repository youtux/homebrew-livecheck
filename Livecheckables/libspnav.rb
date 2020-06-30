class Libspnav
  livecheck do
    url :stable
    regex(%r{url=.+?/libspnav-v?(\d+(?:\.\d+)+)\.t})
  end
end
