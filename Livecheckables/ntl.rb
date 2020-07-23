class Ntl
  livecheck do
    url "https://www.shoup.net/ntl/download.html"
    regex(/href=.*?ntl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
