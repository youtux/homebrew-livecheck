class Lout
  livecheck do
    url "https://download.savannah.gnu.org/releases/lout/"
    regex(/href=.*?lout[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
