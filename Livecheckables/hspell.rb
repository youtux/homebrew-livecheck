class Hspell
  livecheck do
    url "http://hspell.ivrix.org.il/download.html"
    regex(/HREF="hspell-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
