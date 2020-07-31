class Libksba
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libksba/"
    regex(/libksba[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
