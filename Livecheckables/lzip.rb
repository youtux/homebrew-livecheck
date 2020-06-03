class Lzip
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/"
    regex(/href="lzip-([0-9,.]+).tar.lz"/)
  end
end
