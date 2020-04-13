class NetSnmp
  livecheck :url   => "https://sourceforge.net/projects/net-snmp/",
            :regex => %r{url=.+?/net-snmp-v?(\d+(?:\.\d+)+)\.t}
end
