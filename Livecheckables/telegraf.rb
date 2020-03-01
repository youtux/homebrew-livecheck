class Telegraf
  livecheck :url   => "https://portal.influxdata.com/downloads",
            :regex => /telegraf.*?>v?([0-9\.]+)</
end
