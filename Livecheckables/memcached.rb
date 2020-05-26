class Memcached
  livecheck do
    url "https://memcached.org/"
    regex(/memcached-(\d+(?:\.\d+){2,})\./)
  end
end
