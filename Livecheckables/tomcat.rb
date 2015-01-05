class Tomcat
  livecheck :url => "http://apache.panu.it/tomcat/tomcat-8/",
            :regex => %r{href="v(.*?)/"}
end
