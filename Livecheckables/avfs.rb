class Avfs
  livecheck do
    url "https://sourceforge.net/projects/avf/rss"
    regex(%r{url=.*?/avfs[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
