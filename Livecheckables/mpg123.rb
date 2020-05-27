class Mpg123
  livecheck do
    url "https://sourceforge.net/projects/mpg123/rss"
    regex(%r{url=.+?/mpg123-v?(\d+(?:\.\d+)+)\.t})
  end
end
