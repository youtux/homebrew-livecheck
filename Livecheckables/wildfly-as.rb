class WildflyAs
  livecheck :url   => "https://wildfly.org/downloads/",
            :regex => /href=".*?wildfly-([0-9\.]+\.Final)\.t/
end
