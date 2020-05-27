class WireguardGo
  livecheck do
    url "https://git.zx2c4.com/wireguard-go"
    regex(/href=.*>wireguard-go-([0-9\.]+)\.t/)
  end
end
