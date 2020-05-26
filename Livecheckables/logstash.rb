class Logstash
  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
