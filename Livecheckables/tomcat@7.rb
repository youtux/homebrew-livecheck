class TomcatAT7
  livecheck do
    url "https://archive.apache.org/dist/tomcat/tomcat-7/"
    regex(%r{href="v?(\d+(?:\.\d+)+)/"})
  end
end
