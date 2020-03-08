class Tomcat
  livecheck :url   => "https://archive.apache.org/dist/tomcat/tomcat-9/",
            :regex => %r{href="v?(\d+(?:\.\d+)+)/"}
end
