class Siege
  livecheck :url => "http://download.joedog.org/siege/?C=M&O=D",
            :regex => /href="siege-([\d\.]+)\.tar\.gz"/
end
