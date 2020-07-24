class Redis
  livecheck do
    url "http://download.redis.io/releases/"
    regex(/href=.*?redis-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
