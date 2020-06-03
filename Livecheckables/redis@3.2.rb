class RedisAT32
  livecheck do
    url "http://download.redis.io/releases/"
    regex(/href="redis-(3\.2\.[0-9,.]+)\.t/)
  end
end
