class XmlToolingC
  livecheck do
    url "https://shibboleth.net/downloads/c++-opensaml/latest/"
    regex(/href=.*?xmltooling-([0-9.]+)\.t/i)
  end
end
