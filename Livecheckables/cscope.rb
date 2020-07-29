class Cscope
  livecheck do
    url "https://sourceforge.net/projects/cscope/rss"
    regex(/cscope-v?(\d+(?:\.\d+)+[\da-z]*)\.t/i)
  end
end
