class Postgresql
  livecheck :url   => "https://www.postgresql.org/docs/current/static/release.html",
            :regex => /Release ([0-9,\.]+)/
end
