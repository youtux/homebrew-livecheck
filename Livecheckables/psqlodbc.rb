class Psqlodbc
  livecheck do
    url "https://www.postgresql.org/ftp/odbc/versions/src/"
    regex(%r{href=".*?/psqlodbc-([0-9\.]+)\.t})
  end
end
