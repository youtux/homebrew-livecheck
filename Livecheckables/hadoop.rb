class Hadoop
  livecheck :url => "http://apache.claz.org/hadoop/common/",
            :regex => %r{href="hadoop-([0-9\.]+)/}
end
