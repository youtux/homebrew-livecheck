class MysqlConnectorCxx
  livecheck do
    url :homepage
    regex(%r{href="/downloads/gpg/\?file=mysql-connector-c%2B%2B-(\d+.\d+.\d+)-})
  end
end
