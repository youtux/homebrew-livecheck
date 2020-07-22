class Batik
  livecheck do
    url "https://xmlgraphics.apache.org/batik/download.html"
    regex(/href=.*?batik-bin-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
