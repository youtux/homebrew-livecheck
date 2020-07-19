class Libshout
  livecheck do
    url "https://ftp.osuosl.org/pub/xiph/releases/libshout/"
    regex(/href=.*?libshout-([0-9.]+)\.t/i)
  end
end
