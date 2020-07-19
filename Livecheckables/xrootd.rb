class Xrootd
  livecheck do
    url "http://xrootd.org/dload.html"
    regex(/href=.*?xrootd-([0-9,.]+)\.t/)
  end
end
