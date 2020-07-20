class Harbour
  livecheck do
    url "https://sourceforge.net/projects/harbour-project/rss"
    regex(%r{url=.*?/harbour-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
