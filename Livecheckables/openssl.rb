class Openssl
  livecheck :url => "https://github.com/openssl/openssl.git",
            :regex => /OpenSSL_(\d+_\d+_\d+.*)/
end
