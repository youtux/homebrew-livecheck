class Httrack
  livecheck :url => "https://mirror.httrack.com/historical/",
            :regex => /httrack-([0-9\.]+)\./
end
