class Restund
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?restund-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
