class Xrootd
  livecheck do
    url "http://xrootd.org/dload.html"
    regex(/href=.*?xrootd[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
