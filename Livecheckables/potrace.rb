class Potrace
  livecheck do
    url "http://potrace.sourceforge.net/"
    regex(/potrace[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
