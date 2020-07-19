class IscDhcp
  livecheck do
    url "https://www.isc.org/downloads/"
    regex(%r{/dhcp-([a-zA-Z0-9.]+)\.t}i)
  end
end
