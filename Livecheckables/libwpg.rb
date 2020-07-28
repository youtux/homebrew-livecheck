class Libwpg
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libwpg-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
