class Boost
  livecheck do
    url "https://www.boost.org/feed/downloads.rss"
    regex(/Version v?(\d+(?:\.\d+)+)/)
  end
end
