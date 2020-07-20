class Restund
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href=.*?restund-([0-9.]+)\.t/i)
  end
end
