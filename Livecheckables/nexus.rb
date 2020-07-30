class Nexus
  livecheck do
    url "https://help.sonatype.com/repomanager2/download/download-archives---repository-manager-oss"
    regex(/href=.*?nexus[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)(?:-bundle)?\.t/i)
  end
end
