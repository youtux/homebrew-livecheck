class Libwpg
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libwpg-([0-9.\-]+)\.t/i)
  end
end
