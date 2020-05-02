class ShibbolethSp
  livecheck :url   => "https://shibboleth.net/downloads/service-provider/latest/",
            :regex => /href="shibboleth-sp-(\d+(?:\.\d+)+)\.t/
end
