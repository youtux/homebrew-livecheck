class TomcatNative
  livecheck do
    url "https://archive.apache.org/dist/tomcat/tomcat-connectors/native/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
