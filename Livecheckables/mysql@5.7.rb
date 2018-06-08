class MysqlAT57
  livecheck :url => "https://dev.mysql.com/downloads/mysql/5.7.html",
            :regex => %r{href="\/downloads\/gpg\/\?file=mysql-(\d+.\d+.\d+)-}
end
