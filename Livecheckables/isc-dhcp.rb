class IscDhcp
  livecheck do
    url "https://www.isc.org/downloads/"
    regex(%r{/dhcp-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
