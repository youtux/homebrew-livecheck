class Homebank
  livecheck :url => "http://homebank.free.fr/public/",
            :regex => /HREF="homebank-([0-9\.]+)\.t/
end
