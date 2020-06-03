class GnupgAT14
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gnupg/"
    regex(/gnupg-(1\.[0-9.]+)\.t/)
  end
end
