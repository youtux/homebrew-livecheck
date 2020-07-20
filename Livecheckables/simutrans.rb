class Simutrans
  livecheck do
    url "https://sourceforge.net/projects/simutrans/rss"
    regex(%r{url=.*?/simutrans-src-v?(\d+(?:[-_.]\d+)+)\.(?:t|z)}i)
  end
end
