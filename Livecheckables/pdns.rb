class Pdns
  livecheck :url   => "https://downloads.powerdns.com/releases/",
            :regex => /pdns-(\d+(?:\.\d+)*)\.t/
end
