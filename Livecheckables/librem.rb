class Librem
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?rem[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
