class Libwpd
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/href=["']?libwpd[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
