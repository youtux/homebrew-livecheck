class Dnsperf
  livecheck do
    url :homepage
    regex(/dnsperf-(\d+(?:\.\d+)+)\.tar/)
  end
end
