class Djvulibre
  livecheck do
    url "https://sourceforge.net/projects/djvu/files/DjVuLibre/"
    regex(/djvulibre[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
