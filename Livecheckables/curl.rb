class Curl
  livecheck :url => "http://curl.haxx.se/download/",
            :regex => /curl-(.*?)\.tar\.gz/
end
