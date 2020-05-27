class Gnupg
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/gnupg/"
    regex(/gnupg-([0-9\.]+)\.t/)
  end
end
