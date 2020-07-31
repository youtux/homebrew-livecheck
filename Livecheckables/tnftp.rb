class Tnftp
  livecheck do
    url "https://ftp.netbsd.org/pub/NetBSD/misc/tnftp/"
    regex(/href=.*?tnftp[._-]v?(\d+)\.t/i)
  end
end
