class TomcatAT8
  livecheck do
    url "https://archive.apache.org/dist/tomcat/tomcat-8/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
