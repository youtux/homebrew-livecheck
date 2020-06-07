class A52dec
  livecheck do
    url "http://liba52.sourceforge.net/downloads.html"
    regex(/href=.*?a52dec-(\d+(?:\.\d+)+)\.t/)
  end
end
