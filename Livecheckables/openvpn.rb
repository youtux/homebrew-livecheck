class Openvpn
  livecheck do
    url :homepage
    regex(/href=.*?openvpn-([0-9.]+)\.t/i)
  end
end
