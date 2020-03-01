class FreeradiusServer
  livecheck :url   => "https://build.opensuse.org/package/show/openSUSE:Factory/freeradius-server",
            :regex => /freeradius-server-([0-9\.]+)\.t/
end
