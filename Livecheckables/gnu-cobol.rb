class GnuCobol
  livecheck do
    url :stable
    regex(%r{url=.*?/gnucobol[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
