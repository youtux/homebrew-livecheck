class Pinentry
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/pinentry/"
    regex(/pinentry-([0-9.]+)\.t/i)
  end
end
