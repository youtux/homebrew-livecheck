class Speex
  livecheck do
    url "https://ftp.osuosl.org/pub/xiph/releases/speex/?C=M&O=D"
    regex(/href=.*?speex[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
