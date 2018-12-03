class Kafka
  livecheck :url => "https://kafka.apache.org/downloads",
      :regex => %r{kafka-([\d,\.]+)-src\.tgz}
end
