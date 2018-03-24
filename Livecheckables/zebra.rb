class Zebra
  livecheck :url => "https://www.indexdata.com/resources/software/zebra",
            :regex => %r{>Latest:</strong>.*?([0-9\.]+)<}
end
