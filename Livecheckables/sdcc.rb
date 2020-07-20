class Sdcc
  livecheck do
    url "https://sourceforge.net/projects/sdcc/rss"
    regex(%r{url=.*?/sdcc-src-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
