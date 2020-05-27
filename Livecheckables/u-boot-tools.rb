class UBootTools
  livecheck do
    url "https://ftp.denx.de/pub/u-boot/"
    regex(/href="u-boot-([0-9\.]+)\.t/)
  end
end
