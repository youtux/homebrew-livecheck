class Dnsmasq
  livecheck do
    url "http://www.thekelleys.org.uk/dnsmasq/"
    regex(/href=.*?dnsmasq-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
