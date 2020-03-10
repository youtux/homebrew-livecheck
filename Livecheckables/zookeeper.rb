class Zookeeper
  livecheck :url   => "https://zookeeper.apache.org/releases.html",
            :regex => /ZooKeeper (\d+(?:\.\d+)+) is our latest stable release/
end
