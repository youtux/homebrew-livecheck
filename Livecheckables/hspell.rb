class Hspell
  livecheck do
    url "http://hspell.ivrix.org.il/download.html"
    regex(/HREF="hspell-([0-9.]+)\.t/i)
  end
end
