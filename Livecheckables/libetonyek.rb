class Libetonyek
  livecheck do
    url "https://dev-www.libreoffice.org/src/libetonyek/"
    regex(/href=.*?libetonyek-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
