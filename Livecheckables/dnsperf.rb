class Dnsperf
  livecheck do
    url :homepage
    regex(/dnsperf-(\d+(?:\.\d+)+)\.t/)
  end
end
