class Mockserver
  livecheck do
    url "https://repo1.maven.org/maven2/org/mock-server/mockserver-netty/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?[ '">]}i)
  end
end
