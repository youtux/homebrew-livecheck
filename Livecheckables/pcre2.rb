class Pcre2
  livecheck do
    url "https://ftp.pcre.org/pub/pcre/"
    regex(/href="pcre2-([0-9.]+)\.t/)
  end
end
