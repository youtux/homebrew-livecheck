class LibgpgError
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libgpg-error/"
    regex(/libgpg-error-([0-9.]+)\.t/)
  end
end
