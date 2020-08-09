class Lzip
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/"
    strategy :page_match
    regex(/href=.*?lzip[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
