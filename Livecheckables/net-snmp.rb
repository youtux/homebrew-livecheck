class NetSnmp
  livecheck do
    url "https://sourceforge.net/projects/net-snmp/"
    regex(%r{url=.*?/net-snmp-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
