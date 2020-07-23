class Pinentry
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/pinentry/"
    regex(/pinentry-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
