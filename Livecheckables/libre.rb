class Libre
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?re-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
