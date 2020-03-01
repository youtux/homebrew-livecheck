class Libtrng
  livecheck :url   => "https://www.numbercrunch.de/trng/",
            :regex => /href=trng-([0-9\.]+)\.t.*?latest/
end
