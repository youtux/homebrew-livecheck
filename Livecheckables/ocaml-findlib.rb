class OcamlFindlib
  livecheck do
    url :homepage
    regex(%r{href=".*?/findlib-([0-9.]+)\.t})
  end
end
