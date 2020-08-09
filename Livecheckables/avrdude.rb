class Avrdude
  livecheck do
    url "https://download.savannah.gnu.org/releases/avrdude/"
    strategy :page_match
    regex(/href=.*?avrdude[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
