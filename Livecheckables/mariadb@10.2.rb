class MariadbAT102
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download v?(10\.2(?:\.\d+)+) Stable Now/i)
  end
end
