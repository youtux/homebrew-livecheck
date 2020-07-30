class IscDhcp
  livecheck do
    url "https://www.isc.org/downloads/"
    regex(%r{/dhcp[._-]v?(\d+(?:\.\d+)+(?:-P\d+)?)\.t}i)
  end
end
