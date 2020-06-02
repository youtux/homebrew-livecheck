class MysqlClient
  livecheck do
    url "https://github.com/mysql/mysql-server.git"
    regex(/^mysql-v?(\d+(?:\.\d+)+)$/i)
  end
end
