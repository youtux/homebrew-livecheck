class Opentsdb
  livecheck do
    url "https://github.com/OpenTSDB/opentsdb/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
