class Librevenge
  livecheck do
    url "https://dev-www.libreoffice.org/src/"
    regex(/href=["']?librevenge[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
