class Vsftpd
  livecheck do
    url :homepage
    regex(/href=.*?vsftpd-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
