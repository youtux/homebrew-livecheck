class Plantuml
  livecheck do
    url "https://sourceforge.net/projects/plantuml/"
    regex(%r{.*?/plantuml-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
