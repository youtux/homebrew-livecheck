class TomcatAT6
  livecheck :url => "http://archive.apache.org/dist/tomcat/tomcat-6/",
            :regex => %r{href="v(.*?)/"}
end
