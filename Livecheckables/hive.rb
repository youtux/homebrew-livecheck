class Hive
  livecheck :url   => "https://hive.apache.org/downloads.html",
            :regex => /release ([0-9\.]+) available/
end
