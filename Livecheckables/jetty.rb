class Jetty
  livecheck :url   => "https://www.eclipse.org/jetty/download.html",
            :regex => %r{href=".*?/jetty-distribution-([0-9\.v]+)\.t}
end
