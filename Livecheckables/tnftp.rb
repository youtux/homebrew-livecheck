class Tnftp
  livecheck do
    url "https://ftp.netbsd.org/pub/NetBSD/misc/tnftp/"
    regex(/href=.*?tnftp-v?(\d+)\.t/i)
  end
end
