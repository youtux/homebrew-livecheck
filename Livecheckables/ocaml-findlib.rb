class OcamlFindlib
  livecheck do
    url "http://download.camlcity.org/download/"
    regex(/href=.*?findlib-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
