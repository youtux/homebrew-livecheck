class Pcre
  livecheck do
    url "https://ftp.pcre.org/pub/pcre/"
    regex(/href="pcre-([0-9,.]+)\.t/)
  end
end
