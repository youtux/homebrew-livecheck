class Mysql
  livecheck do
    url "https://dev.mysql.com/downloads/mysql/"
    regex(/href=.*?mysql[._-]v?(\d+.\d+.\d+)-/i)
  end
end
