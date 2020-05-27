class Opensaml
  livecheck do
    url "https://shibboleth.net/downloads/c++-opensaml/latest/"
    regex(/href="opensaml-(\d+(?:\.\d+)+)\.t/)
  end
end
