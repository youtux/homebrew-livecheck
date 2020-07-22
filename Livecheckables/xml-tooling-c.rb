class XmlToolingC
  livecheck do
    url "https://shibboleth.net/downloads/c++-opensaml/latest/"
    regex(/href=.*?xmltooling-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
