class Lzlib
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/lzlib/"
    regex(/href=.*?lzlib[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
