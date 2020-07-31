class Pinentry
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/pinentry/"
    regex(/pinentry[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
