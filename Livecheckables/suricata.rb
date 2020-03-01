class Suricata
  livecheck :url   => "https://suricata-ids.org/download/",
            :regex => /suricata-([0-9\.]+)\.t/
end
