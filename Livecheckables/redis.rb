class Redis
  livecheck do
    url "http://download.redis.io/releases/"
    regex(/href=.*?redis-([0-9,.]+)\.t/i)
  end
end
