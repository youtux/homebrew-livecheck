class Libmspub
  livecheck do
    url "https://dev-www.libreoffice.org/src/libmspub/"
    regex(/href=.*?libmspub-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
