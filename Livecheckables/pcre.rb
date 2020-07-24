class Pcre
  livecheck do
    url "https://ftp.pcre.org/pub/pcre/"
    regex(/href=.*?pcre-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
