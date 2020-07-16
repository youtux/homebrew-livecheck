class OcamlFindlib
  livecheck do
    url "http://download.camlcity.org/download/"
    regex(/href=.*?findlib-([0-9.]+)\.t/)
  end
end
