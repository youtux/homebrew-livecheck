class GnuCobol
  livecheck do
    url :stable
    regex(%r{url=.+?/gnucobol-v?(\d+(?:\.\d+)+)\.t})
  end
end
