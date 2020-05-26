class Cscope
  livecheck do
    url "https://sourceforge.net/projects/cscope/rss"
    regex(/cscope-([a-zA-Z0-9.]+(?:\.[a-zA-Z0-9.]+)*)\.t/)
  end
end
