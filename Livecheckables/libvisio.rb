class Libvisio
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libvisio-([0-9.\-]+)\.t/)
  end
end
