class Mbedtls
  livecheck :url   => "https://tls.mbed.org/download",
            :regex => %r{href="/download/start/mbedtls-([0-9\.]+)-}
end
