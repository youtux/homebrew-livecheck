class Dnsperf
  livecheck do
    url :homepage
    regex(/dnsperf[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
