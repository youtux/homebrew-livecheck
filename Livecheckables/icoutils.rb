class Icoutils
  livecheck do
    url "https://download.savannah.gnu.org/releases/icoutils/"
    regex(/href=.*?icoutils[._-](\d+(?:\.\d+)+)\.t/i)
  end
end
