class Druid
  livecheck :url   => "https://druid.apache.org/downloads.html",
            :regex => /href=".*druid-([0-9,\.]+)-bin\.t/
end
