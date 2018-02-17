class Suricata
  livecheck :url => "https://suricata-ids.org/download/",
            :regex => /suricata-(.*?)\.tar\.gz/
end
