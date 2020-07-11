class Leptonica
  livecheck do
    url "http://www.leptonica.org/download.html"
    regex(/href=.*?leptonica[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
