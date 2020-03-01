class Softhsm
  livecheck :url   => "https://www.opendnssec.org/download/",
            :regex => %r{href=".*?/softhsm-([0-9\.]+)\.t}
end
