class WireguardTools
  livecheck :url => "https://git.zx2c4.com/WireGuard",
            :regex => %r{href=.*>WireGuard-([0-9,\.]+)\.tar}
end
