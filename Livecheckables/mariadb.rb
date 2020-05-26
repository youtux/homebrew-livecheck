class Mariadb
  livecheck do
    url "https://downloads.mariadb.org/"
    regex(/Download ([0-9\.]+) Stable Now/)
  end
end
