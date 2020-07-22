class GraphTool
  livecheck do
    url "https://downloads.skewed.de/graph-tool/"
    regex(/href=.*?graph-tool-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
