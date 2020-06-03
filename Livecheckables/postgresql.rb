class Postgresql
  livecheck do
    url "https://www.postgresql.org/docs/current/static/release.html"
    regex(/Release ([0-9,.]+)/)
  end
end
