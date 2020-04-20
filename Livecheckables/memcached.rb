class Memcached
  livecheck :url   => "https://memcached.org/",
            :regex => /memcached-(\d+(?:\.\d+){2,})\./
end
