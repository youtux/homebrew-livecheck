class Potrace
  livecheck do
    url "http://potrace.sourceforge.net/"
    regex(/potrace-(\d+(?:\.\d+)*)\.t/i)
  end
end
