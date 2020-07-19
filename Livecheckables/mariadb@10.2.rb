class MariadbAT102
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download (10\.2\.[0-9.]+) Stable Now/i)
  end
end
