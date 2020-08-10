class Treecc
  livecheck do
    url "https://download.savannah.gnu.org/releases/dotgnu-pnet/"
    regex(/href=.*?treecc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
