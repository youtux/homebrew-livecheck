class PostgresqlAT95
  livecheck do
    url "https://www.postgresql.org/docs/9.5/static/release.html"
    regex(/Release ([0-9,.]+)/i)
  end
end
