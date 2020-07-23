class Libshout
  livecheck do
    url "https://ftp.osuosl.org/pub/xiph/releases/libshout/"
    regex(/href=.*?libshout-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
