class Dnsdist
  livecheck :url => "https://downloads.powerdns.com/releases/",
            :regex => /dnsdist-(\d+(?:\.\d+)*)\.t/
end
