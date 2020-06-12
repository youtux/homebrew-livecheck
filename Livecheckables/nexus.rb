class Nexus
  livecheck do
    url "https://oss.sonatype.org/"
    regex(/<span>\s*Nexus Repository Manager v?(\d+(?:\.\d+)+(?:-\d+)?)\s*</i)
  end
end
