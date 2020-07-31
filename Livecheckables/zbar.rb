class Zbar
  livecheck do
    url "https://sourceforge.net/projects/zbar/"
    regex(/zbar[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
