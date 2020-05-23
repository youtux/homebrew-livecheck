class Freetds
  livecheck :url   => "http://www.freetds.org/files/stable/",
            :regex => /href=.*?freetds-v?(\d+(?:\.\d+)+)\.t/i
end
