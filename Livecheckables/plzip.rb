class Plzip
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/plzip/"
    regex(/href=.*?plzip-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
