class A52dec
  livecheck do
    url "http://liba52.sourceforge.net/downloads.html"
    strategy :page_match
    regex(/href=.*?a52dec[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
