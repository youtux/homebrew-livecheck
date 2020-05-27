class OcamlFindlib
  livecheck do
    url "http://projects.camlcity.org/projects/findlib.html"
    regex(%r{href=".*?/findlib-([0-9\.]+)\.t})
  end
end
