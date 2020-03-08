class Libressl
  livecheck :url   => "https://www.libressl.org/",
            :regex => /latest stable release is (\d+(?:\.\d+)+)/
end
