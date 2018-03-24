class Storm
  livecheck :url => "http://apache.claz.org/storm/",
            :regex => %r{href="apache-storm-([0-9\.]+)/}
end
