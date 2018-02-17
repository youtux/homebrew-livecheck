class Httrack
  livecheck :url => "https://mirror.httrack.com/historical/",
            :regex => /httrack-(.*?)\.tar\.gz/
end
