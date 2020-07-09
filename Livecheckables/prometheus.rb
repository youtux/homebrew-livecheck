class Prometheus
  livecheck do
    url "https://github.com/prometheus/prometheus/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
