class Softhsm
  livecheck :url   => "https://dist.opendnssec.org/source/",
            :regex => /href=.+?softhsm-v?(\d+(?:\.\d+)+)\.t/
end
