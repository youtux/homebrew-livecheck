class Socat
  livecheck :url => "http://www.dest-unreach.org/socat/download/",
            :regex => %r{socat-([0-9\.]+)\.tar\.gz}
end
