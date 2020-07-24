class GnupgAT14
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gnupg/"
    regex(/gnupg-v?(1\.4(?:\.\d+)+)\.t/i)
  end
end
