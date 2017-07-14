class Druid
  livecheck :url => "http://druid.io/downloads.html",
            :regex => /href=".*druid-([0-9,\.]+)-bin\.t/
end
