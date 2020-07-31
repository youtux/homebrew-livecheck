class MysqlConnectorCxx
  livecheck do
    url :homepage
    regex(/href=.*?mysql-connector-c%2B%2B[._-]v?(\d+.\d+.\d+)-/i)
  end
end
