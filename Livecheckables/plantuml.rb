class Plantuml
  livecheck do
    url "https://sourceforge.net/projects/plantuml/"
    regex(%r{.*?/plantuml[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
