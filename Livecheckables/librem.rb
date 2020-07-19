class Librem
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?rem-([0-9.]+)\.t/i)
  end
end
