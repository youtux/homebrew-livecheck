class Dvdrtools
  livecheck do
    url "https://download.savannah.gnu.org/releases/dvdrtools/"
    regex(/href=.*?dvdrtools[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
