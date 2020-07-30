class Libetonyek
  livecheck do
    url "https://dev-www.libreoffice.org/src/libetonyek/"
    regex(/href=.*?libetonyek[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
