class Gnutls
  livecheck do
    url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/"
    regex(/gnutls[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
