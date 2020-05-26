class Libwpd
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=\"libwpd-([0-9\.\-]+)\.t/)
  end
end
