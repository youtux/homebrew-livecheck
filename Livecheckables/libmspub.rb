class Libmspub
  livecheck do
    url "https://dev-www.libreoffice.org/src/libmspub/"
    regex(/href="libmspub-([0-9,.]+)\.t/)
  end
end
