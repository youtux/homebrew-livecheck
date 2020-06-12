class Bsdiff
  livecheck do
    url "http://www.daemonology.net/bsdiff"
    regex(/href=.*?bsdiff-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
