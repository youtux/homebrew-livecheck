class Graphviz
  livecheck do
    url "https://www2.graphviz.org/Packages/stable/portable_source/"
    regex(/href=.*?graphviz[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
