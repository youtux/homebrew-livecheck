class Pngxx
  livecheck do
    url "https://download.savannah.gnu.org/releases/pngpp/"
    regex(/href=.*?png\+\+[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
