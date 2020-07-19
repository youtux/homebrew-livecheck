class Psqlodbc
  livecheck do
    url "https://ftp.postgresql.org/pub/odbc/versions/src/"
    regex(/href=.*?psqlodbc-([0-9.]+)\.t/i)
  end
end
