class Postgresql
  livecheck do
    url "https://www.postgresql.org/docs/current/static/release.html"
    regex(/Release v?(\d+(?:\.\d+)+)/i)
  end
end
