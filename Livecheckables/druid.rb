class Druid
  livecheck :url   => "https://druid.io/downloads.html",
            :regex => /href=".*druid-([0-9,\.]+)-bin\.t/
end
