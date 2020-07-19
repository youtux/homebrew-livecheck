class GraphTool
  livecheck do
    url "https://downloads.skewed.de/graph-tool/"
    regex(/href=.*?graph-tool-([0-9.]+)\.t/i)
  end
end
