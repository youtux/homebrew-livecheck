class Potrace
  livecheck do
    url "http://potrace.sourceforge.net/"
    strategy :page_match
    regex(/href=.*?potrace[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
