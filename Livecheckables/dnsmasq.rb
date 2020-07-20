class Dnsmasq
  livecheck do
    url "http://www.thekelleys.org.uk/dnsmasq/"
    regex(/href=.*?dnsmasq-([0-9,.]+)\.t/i)
  end
end
