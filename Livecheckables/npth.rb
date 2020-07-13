class Npth
  livecheck do
    url "https://gnupg.org/ftp/gcrypt/npth/"
    regex(/href=.*?npth[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
