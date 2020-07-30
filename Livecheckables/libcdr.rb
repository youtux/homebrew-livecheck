class Libcdr
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libcdr[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
