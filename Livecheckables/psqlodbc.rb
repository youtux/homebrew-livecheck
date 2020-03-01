class Psqlodbc
  livecheck :url   => "https://www.postgresql.org/ftp/odbc/versions/src/",
            :regex => %r{href=".*?/psqlodbc-([0-9\.]+)\.t}
end
