class WireguardGo
  livecheck do
    url :head
    regex(/href=.*?wireguard-go[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
