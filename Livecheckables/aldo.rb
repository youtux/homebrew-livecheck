class Aldo
  livecheck do
    url "https://download.savannah.gnu.org/releases/aldo/"
    regex(/href=.*?aldo[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
