class Xvid
  livecheck :url => "https://downloads.xvid.com/downloads/",
            :regex => /href="[^"]+xvidcore-([\d\.]+)\.tar\.bz2"/
end
