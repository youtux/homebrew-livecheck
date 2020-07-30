class Gpgme
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gpgme/"
    regex(/gpgme[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
