class Mockserver
  livecheck do
    url "https://oss.sonatype.org/content/repositories/releases/org/mock-server/mockserver-netty/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
