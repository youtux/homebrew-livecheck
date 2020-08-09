class Gloox
  livecheck do
    url :homepage
    regex(/Latest stable version.*?href=.*?gloox[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
