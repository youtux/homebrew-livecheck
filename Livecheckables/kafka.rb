class Kafka
  livecheck :url   => "https://kafka.apache.org/downloads",
            :regex => /kafka-([\d,\.]+)-src\.tgz/
end
