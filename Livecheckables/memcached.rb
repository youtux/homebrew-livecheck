class Memcached
  livecheck :url => "http://memcached.org/",
            :regex => /memcached-(\d+(?:\.\d+){2,})\./
end
