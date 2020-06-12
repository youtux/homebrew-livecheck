class NodeExporter
  livecheck do
    url "https://github.com/prometheus/node_exporter.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
