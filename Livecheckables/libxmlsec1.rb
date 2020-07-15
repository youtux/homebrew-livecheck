class Libxmlsec1
  livecheck do
    url "https://www.aleksey.com/xmlsec/download/"
    regex(/href=.*?xmlsec1-([0-9.]+)\.t/)
  end
end
