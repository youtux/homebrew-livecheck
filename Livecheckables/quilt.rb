class Quilt
  livecheck do
    url "https://download.savannah.gnu.org/releases/quilt/"
    regex(/href=.*?quilt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
