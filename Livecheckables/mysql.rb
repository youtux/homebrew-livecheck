class Mysql
  livecheck do
    url "https://dev.mysql.com/downloads/mysql/"
    regex(/href=.*?mysql-(\d+.\d+.\d+)-/)
  end
end
