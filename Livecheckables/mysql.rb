class Mysql
  livecheck do
    url "https://dev.mysql.com/downloads/mysql/"
    regex(%r{href="/downloads/gpg/\?file=mysql-(\d+.\d+.\d+)-})
  end
end
