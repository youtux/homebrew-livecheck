class Openrtsp
  livecheck :url   => "http://www.live555.com/liveMedia/public/",
            :regex => /live\.([0-9a-z.]+)\.tar\.gz/
end
