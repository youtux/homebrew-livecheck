class Libmspub
  livecheck do
    url "https://dev-www.libreoffice.org/src/libmspub/"
    regex(/href=.*?libmspub[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
