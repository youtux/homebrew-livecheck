class Pdnsrec
  livecheck :url   => "https://downloads.powerdns.com/releases/",
            :regex => /pdns-recursor-(\d+(?:\.\d+)*)\.tar/
end
