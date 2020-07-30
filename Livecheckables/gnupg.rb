class Gnupg
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gnupg/"
    regex(/gnupg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
