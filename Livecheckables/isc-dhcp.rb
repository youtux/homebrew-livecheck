class IscDhcp
  livecheck :url => "https://www.isc.org/downloads/",
            :regex => %r{/dhcp-([a-zA-Z0-9\.]+)\.t}
end
