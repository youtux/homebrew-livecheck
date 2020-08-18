class Normalize
  livecheck do
    url "https://download.savannah.gnu.org/releases/normalize/"
    regex(/href=.*?normalize[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
