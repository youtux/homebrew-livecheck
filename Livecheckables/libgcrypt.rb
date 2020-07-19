class Libgcrypt
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libgcrypt/"
    regex(/libgcrypt-(\d+\.\d+\.\d+)/i)
  end
end
