class Xpdf
  livecheck do
    url "https://www.xpdfreader.com/download.html"
    regex(/href=.*?xpdf-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
