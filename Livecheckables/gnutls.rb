class Gnutls
  livecheck do
    url "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/"
    regex(/gnutls-(\d+(?:\.\d+)*)\.t/)
  end
end
