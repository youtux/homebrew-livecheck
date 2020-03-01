class WildflyAs
  livecheck :url => "http://wildfly.org/downloads/",
            :regex => /href=".*?wildfly-([0-9\.]+\.Final)\.t/
end
