class WireguardGo
  livecheck do
    url :head
    regex(/href=.*>wireguard-go-([0-9.]+)\.t/)
  end
end
