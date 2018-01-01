class Zebra
  livecheck :url => "http://www.indexdata.com/zebra",
            :regex => /Latest:.*?>([0-9\.]+)</
end
