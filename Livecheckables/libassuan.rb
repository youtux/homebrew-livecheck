class Libassuan
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/libassuan/"
    regex(/libassuan-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
