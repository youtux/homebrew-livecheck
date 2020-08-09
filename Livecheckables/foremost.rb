class Foremost
  livecheck do
    url "http://foremost.sourceforge.net/"
    strategy :page_match
    regex(/href=.*?foremost[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
