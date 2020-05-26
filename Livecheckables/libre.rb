class Libre
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href="re-([0-9\.]+)\.t/)
  end
end
