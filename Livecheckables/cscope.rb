class Cscope
  livecheck do
    url "https://sourceforge.net/projects/cscope/rss"
    regex(/cscope[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
