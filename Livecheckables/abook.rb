class Abook
  livecheck do
    url "http://abook.sourceforge.net/"
    strategy :page_match
    regex(/href=.*?abook[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
