class Plzip
  livecheck do
    url "https://download.savannah.gnu.org/releases/lzip/plzip"
    regex(/href="plzip-([0-9\.]+)\.t/)
  end
end
