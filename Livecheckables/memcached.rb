class Memcached
  livecheck do
    url :homepage
    regex(/memcached-(\d+(?:\.\d+){2,})\./)
  end
end
