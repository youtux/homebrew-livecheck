class OcamlFindlib
  livecheck do
    url :homepage
    regex(/href=.*?findlib-([0-9.]+)\.t/)
  end
end
