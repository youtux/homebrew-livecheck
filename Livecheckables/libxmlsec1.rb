class Libxmlsec1
  livecheck do
    url "https://www.aleksey.com/xmlsec/download/"
    regex(/href=.*?xmlsec1-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
