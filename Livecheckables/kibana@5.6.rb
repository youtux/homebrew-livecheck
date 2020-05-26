class KibanaAT56
  livecheck do
    url "https://github.com/elastic/kibana.git"
    regex(/v?(5\.6[0-9\.]+)/)
  end
end
