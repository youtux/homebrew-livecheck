class Librdkafka
  livecheck :url => "https://github.com/edenhill/librdkafka/releases",
            :regex => %r{href="/edenhill/librdkafka/tree/v?([0-9\.]+)"}
end
