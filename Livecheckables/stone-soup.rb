class StoneSoup
  livecheck do
    url "https://crawl.develz.org/download.htm"
    regex(/Stable.*?>([0-9.]+)</)
  end
end
