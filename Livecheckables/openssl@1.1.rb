class OpensslAT11
  livecheck :url => "https://www.openssl.org/source/",
            :regex => /href="openssl-(1\.1[0-9a-z\.]+)\.t/
end
