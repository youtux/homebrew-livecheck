class PostgresqlAT96
  livecheck :url => "https://www.postgresql.org/docs/9.6/static/release.html",
            :regex => /Release ([0-9,\.]+)/
end
