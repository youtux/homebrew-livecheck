class TomcatAT8
  livecheck :url   => "http://archive.apache.org/dist/tomcat/tomcat-8/",
            :regex => %r{href="v(.*?)/"}
end
