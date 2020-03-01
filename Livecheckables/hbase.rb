class Hbase
  livecheck :url   => "https://mirrors.ocf.berkeley.edu/apache/hbase/stable/",
            :regex => /href="hbase-([0-9,\.]+)-bin\.t/
end
