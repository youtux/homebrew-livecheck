class Potrace
  livecheck do
    url "http://potrace.sourceforge.net/"
    regex(/href=.*?potrace[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
