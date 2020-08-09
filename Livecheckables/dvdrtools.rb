class Dvdrtools
  livecheck do
    url "https://download.savannah.gnu.org/releases/dvdrtools/"
    strategy :page_match
    regex(/href=.*?dvdrtools[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
