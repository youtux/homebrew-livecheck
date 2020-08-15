class Influxdb
  livecheck do
    url "https://github.com/influxdata/influxdb/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
