class Openssl
  livecheck :url => "https://www.openssl.org/source/",
            :regex => %r{<font(?:.*?)openssl-(.*?)\.tar\.gz(?:.*?)LATEST(?:.*?)</font>}
end
