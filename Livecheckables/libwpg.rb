class Libwpg
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/href=["']?libwpg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
