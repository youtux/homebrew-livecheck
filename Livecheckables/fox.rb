class Fox
  livecheck do
    url "http://www.fox-toolkit.org/news.html"
    regex(/FOX STABLE ([0-9.]+)/)
  end
end
