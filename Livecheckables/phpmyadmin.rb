class Phpmyadmin
  livecheck do
    url "https://www.phpmyadmin.net/files/"
    regex(/href=.*?phpMyAdmin-v?(\d+(?:\.\d+)+)-all-languages\.zip/i)
  end
end
