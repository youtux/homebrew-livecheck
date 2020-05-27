class Gpgme
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gpgme/"
    regex(/gpgme-([0-9\.]+)\.t/)
  end
end
