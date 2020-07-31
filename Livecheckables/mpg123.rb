class Mpg123
  livecheck do
    url "https://sourceforge.net/projects/mpg123/rss"
    regex(%r{url=.*?/mpg123[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
