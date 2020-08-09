class Icoutils
  livecheck do
    url "https://download.savannah.gnu.org/releases/icoutils/"
    strategy :page_match
    regex(/href=.*?icoutils[._-](\d+(?:\.\d+)+)\.t/i)
  end
end
