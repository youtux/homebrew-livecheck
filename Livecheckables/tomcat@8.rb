class TomcatAT8
  livecheck :url   => "https://archive.apache.org/dist/tomcat/tomcat-8/",
            :regex => %r{href="v?(\d+(?:\.\d+)+)/"}
end
