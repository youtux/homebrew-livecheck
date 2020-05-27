class Influxdb
  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
