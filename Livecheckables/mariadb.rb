class Mariadb
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download v?(\d+(?:\.\d+)+) Stable Now/i)
  end
end
