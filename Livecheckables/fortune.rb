class Fortune
  livecheck :url   => "http://www.ibiblio.org/pub/linux/games/amusements/fortune/",
            :regex => /fortune-mod-([\d\.]+)\.tar\.gz/
end
