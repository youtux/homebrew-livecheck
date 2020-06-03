class Speex
  livecheck do
    url "https://ftp.osuosl.org/pub/xiph/releases/speex/?C=M&O=D"
    regex(/href="speex-([\d.]+)\.tar\.gz"/)
  end
end
