class Restund
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?restund[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
