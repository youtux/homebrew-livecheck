class Dvdrtools
  livecheck do
    url "https://download.savannah.gnu.org/releases/dvdrtools/"
    regex(/href=.*?dvdrtools-([0-9.]+)\.t/)
  end
end
