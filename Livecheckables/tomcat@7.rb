class TomcatAT7
  livecheck :url => "http://archive.apache.org/dist/tomcat/tomcat-7/",
            :regex => %r{href="v(.*?)/"}
end
