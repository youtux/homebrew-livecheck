class Nload
  livecheck :url   => "http://www.roland-riegel.de/nload/",
            :regex => /href=.+?nload-v?(\d+(?:\.\d+)+)\.t/
end
