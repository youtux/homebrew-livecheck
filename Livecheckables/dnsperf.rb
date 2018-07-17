class Dnsperf
  livecheck :url => "https://www.akamai.com/us/en/products/network-operator/measurement-tools.jsp",
            :regex => /dnsperf and resperf ([0-9\.]+) – source distribution/
end
