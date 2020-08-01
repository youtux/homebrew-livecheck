class Squid
  livecheck do
    url "http://www.squid-cache.org/Versions/v4/"
    regex(/squid[._-]v?(\d+(?:\.\d+)+)-RELEASENOTES\.html/i)
  end
end
