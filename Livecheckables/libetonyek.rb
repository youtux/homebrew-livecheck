class Libetonyek
  livecheck do
    url "https://dev-www.libreoffice.org/src/libetonyek/"
    regex(/href=.*?libetonyek-([0-9,.]+)\.t/i)
  end
end
