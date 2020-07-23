class Fox
  livecheck do
    url "http://www.fox-toolkit.org/news.html"
    regex(/FOX STABLE v?(\d+(?:\.\d+)+)/i)
  end
end
