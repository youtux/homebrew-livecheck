class Plantuml
  livecheck do
    url :stable
    regex(%r{url=.*?/plantuml[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
