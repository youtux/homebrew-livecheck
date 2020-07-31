class MysqlClient
  livecheck do
    url "https://github.com/mysql/mysql-server.git"
    regex(/^mysql[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
