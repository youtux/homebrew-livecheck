class Sqlite
  livecheck do
    url "https://sqlite.org/news.html"
    regex(/(3(?:\.[0-9]+)+)/i)
  end
end
