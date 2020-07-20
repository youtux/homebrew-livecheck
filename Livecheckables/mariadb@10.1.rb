class MariadbAT101
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download (10\.1\.[0-9.]+) Stable Now/i)
  end
end
