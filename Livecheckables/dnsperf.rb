class Dnsperf
  livecheck do
    url "https://www.dns-oarc.net/tools/dnsperf"
    regex(/dnsperf-(\d+(?:\.\d+)+)\.tar/)
  end
end
