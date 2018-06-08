class PostgresqlAT94
  livecheck :url => "https://www.postgresql.org/docs/9.4/static/release.html",
            :regex => /Release ([0-9,\.]+)/
end
