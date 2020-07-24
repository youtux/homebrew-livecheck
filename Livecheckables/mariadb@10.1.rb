class MariadbAT101
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download v?(10\.1(?:\.\d+)+) Stable Now/i)
  end
end
