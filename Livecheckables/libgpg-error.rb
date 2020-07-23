class LibgpgError
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libgpg-error/"
    regex(/libgpg-error-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
