class Zookeeper
  livecheck do
    url "https://zookeeper.apache.org/releases.html"
    regex(/ZooKeeper (\d+(?:\.\d+)+) is our latest stable release/i)
  end
end
