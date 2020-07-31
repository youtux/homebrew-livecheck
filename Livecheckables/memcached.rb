class Memcached
  livecheck do
    url :homepage
    regex(/memcached[._-]v?(\d+(?:\.\d+){2,})\./i)
  end
end
