class RedisAT32
  livecheck :url => "http://download.redis.io/releases/",
            :regex => /href="redis-(3\.2\.[0-9,\.]+)\.t/
end
