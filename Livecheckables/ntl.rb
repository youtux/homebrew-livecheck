class Ntl
  livecheck do
    url "https://www.shoup.net/ntl/download.html"
    regex(/href="ntl-([0-9\.]+)\.t/)
  end
end
