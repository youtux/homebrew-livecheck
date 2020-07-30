class Sdcc
  livecheck do
    url "https://sourceforge.net/projects/sdcc/rss"
    regex(%r{url=.*?/sdcc-src[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
