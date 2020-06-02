class Opentsdb
  livecheck do
    url "https://github.com/OpenTSDB/opentsdb/releases"
    regex(%r{Latest release.*?href="/OpenTSDB/opentsdb/tree/v?([0-9.]+)"}m)
  end
end
