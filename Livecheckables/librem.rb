class Librem
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?rem-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
