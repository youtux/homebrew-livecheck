class Baresip
  livecheck do
    url "http://www.creytiv.com/pub/"
    regex(/href="baresip-([0-9.]+)\.t/)
  end
end
