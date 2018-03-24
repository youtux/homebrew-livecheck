class Tomcat
  livecheck :url => "http://apache.panu.it/tomcat/tomcat-9/",
            :regex => %r{href="v(.*?)/"}
end
