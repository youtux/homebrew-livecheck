class Harbour
  livecheck do
    url "https://sourceforge.net/projects/harbour-project/rss"
    regex(%r{url=.*?/harbour[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
