class Rsyslog
  livecheck :url   => "https://www.rsyslog.com/",
            :regex => /Current Version.+?v?(\d+(?:\.\d+)+)/m
end
