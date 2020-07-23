class Psqlodbc
  livecheck do
    url "https://ftp.postgresql.org/pub/odbc/versions/src/"
    regex(/href=.*?psqlodbc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
