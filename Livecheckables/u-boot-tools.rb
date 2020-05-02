class UBootTools
  livecheck :url   => "https://ftp.denx.de/pub/u-boot/",
            :regex => /href="u-boot-([0-9\.]+)\.t/
end
