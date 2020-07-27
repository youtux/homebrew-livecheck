class Libcdr
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/.*href=.*?libcdr-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
