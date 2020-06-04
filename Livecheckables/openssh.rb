class Openssh
  livecheck do
    url "https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/"
    regex(/href=.*?openssh-v?(\d+(?:\.\d+)+(?:p\d+)?)\.t/i)
  end
end
