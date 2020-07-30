class Docbook2x
  livecheck do
    url "https://sourceforge.net/projects/docbook2x/rss"
    regex(%r{url=.*?/docbook2X[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
