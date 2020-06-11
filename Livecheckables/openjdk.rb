class Openjdk
  livecheck do
    url "http://hg.openjdk.java.net/jdk-updates/jdk14u/tags"
    regex(/jdk-v?(\d+(?:\.\d+)+(?:\+\d+|-ga)?)/i)
  end
end
