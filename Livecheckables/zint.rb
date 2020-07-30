class Zint
  livecheck do
    url "https://sourceforge.net/projects/zint/rss"
    regex(%r{url=.*?/zint[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
