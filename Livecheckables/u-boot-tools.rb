class UBootTools
  livecheck do
    url "https://ftp.denx.de/pub/u-boot/"
    regex(/href=.*?u-boot-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
