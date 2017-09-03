class Mbedtls
  livecheck :url => "https://github.com/ARMmbed/mbedtls/releases",
            :regex => %r{href="/ARMmbed/mbedtls/releases/tag/mbedtls-([0-9\.]+)"}
end
