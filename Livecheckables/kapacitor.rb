class Kapacitor
  livecheck :url   => "https://portal.influxdata.com/downloads",
            :regex => /kapacitor.*?>v?([0-9\.]+)</
end
