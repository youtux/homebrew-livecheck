class A52dec
  livecheck do
    url "http://liba52.sourceforge.net/downloads.html"
    regex(/href=.*?a52dec[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
