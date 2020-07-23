class StoneSoup
  livecheck do
    url "https://crawl.develz.org/download.htm"
    regex(/Stable.*?>v?(\d+(?:\.\d+)+)</i)
  end
end
