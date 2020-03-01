class Influxdb
  livecheck :url   => "https://portal.influxdata.com/downloads",
            :regex => /influxdb.*?>v?([0-9\.]+)</
end
