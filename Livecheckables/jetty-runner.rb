class JettyRunner
  livecheck do
    url "https://www.eclipse.org/jetty/download.html"
    regex(%r{href=".*?/jetty-distribution-([0-9\.v]+)\.t})
  end
end
