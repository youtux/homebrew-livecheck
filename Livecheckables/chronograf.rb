class Chronograf
  livecheck :url   => "https://portal.influxdata.com/downloads",
            :regex => /chronograf.*?>v?([0-9\.]+)</
end
