class Foremost
  livecheck do
    url "http://foremost.sourceforge.net/"
    regex(/href=.*?foremost-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
