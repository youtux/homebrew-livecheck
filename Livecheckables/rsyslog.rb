class Rsyslog
  livecheck :url   => "https://www.rsyslog.com/",
            :regex => /Current Version.*?>([0-9\.]+)</
end
