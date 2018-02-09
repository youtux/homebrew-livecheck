class Openssl
  livecheck :url => "https://www.openssl.org/source/",
            :regex => /href="openssl-(1\.0[0-9a-z\.]+)\.t/
end
