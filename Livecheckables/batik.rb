class Batik
  livecheck do
    url "https://xmlgraphics.apache.org/batik/download.html"
    regex(/href=.*?batik-bin-([0-9.]+)\.t/i)
  end
end
