class Udis86
  livecheck do
    url "https://sourceforge.net/projects/udis86/rss"
    regex(%r{url=.*?/udis86-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
