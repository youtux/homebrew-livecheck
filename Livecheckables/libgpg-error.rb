class LibgpgError
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libgpg-error/"
    regex(/libgpg-error[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
