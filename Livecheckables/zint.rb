class Zint
  livecheck do
    url "https://sourceforge.net/projects/zint/rss"
    regex(%r{url=.*?/zint-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
