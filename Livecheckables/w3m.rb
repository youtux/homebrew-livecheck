class W3m
  livecheck do
    url "https://sourceforge.net/projects/w3m/rss"
    regex(%r{url=.*?/w3m[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
