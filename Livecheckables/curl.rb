class Curl
  livecheck :url => "https://curl.haxx.se/download/",
            :regex => /curl-(.*?)\.tar\.gz/
end
