class Zookeeper
  livecheck :url => "http://apache.claz.org/zookeeper/stable",
            :regex => /href="zookeeper-([0-9\.]+)\.t/
end
