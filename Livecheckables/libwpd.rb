class Libwpd
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libwpd-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
