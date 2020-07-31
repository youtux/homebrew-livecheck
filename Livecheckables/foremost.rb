class Foremost
  livecheck do
    url "http://foremost.sourceforge.net/"
    regex(/href=.*?foremost[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
