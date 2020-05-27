class MysqlConnectorCxx
  livecheck do
    url "https://dev.mysql.com/downloads/connector/cpp/"
    regex(%r{href="/downloads/gpg/\?file=mysql-connector-c%2B%2B-(\d+.\d+.\d+)-})
  end
end
