class ShibbolethSp
  livecheck do
    url "https://shibboleth.net/downloads/service-provider/latest/"
    regex(/href="shibboleth-sp-(\d+(?:\.\d+)+)\.t/)
  end
end
