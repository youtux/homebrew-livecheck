class Jetty
  livecheck do
    url "https://www.eclipse.org/jetty/download.html"
    regex(/href=.*?jetty-distribution-([0-9.v]+)\.t/)
  end
end
