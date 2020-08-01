class MysqlAT56
  livecheck do
    url "https://dev.mysql.com/downloads/mysql/5.6.html"
    regex(/href=.*?mysql[._-]v?(\d+.\d+.\d+)-/i)
  end
end
