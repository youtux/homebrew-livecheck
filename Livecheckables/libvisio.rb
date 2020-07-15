class Libvisio
  livecheck do
    url "https://dev-www.libreoffice.org/src/libvisio/"
    regex(/href=.*?libvisio[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
