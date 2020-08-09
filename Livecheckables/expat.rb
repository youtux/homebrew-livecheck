class Expat
  livecheck do
    url "https://github.com/libexpat/libexpat/releases/latest"
    regex(/href=.*?expat[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
