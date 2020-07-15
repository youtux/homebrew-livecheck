class Lzlib
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/lzlib/"
    regex(/href=.*?lzlib-([0-9.]+)\.t/)
  end
end
