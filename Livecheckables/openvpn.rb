class Openvpn
  livecheck do
    url :homepage
    regex(/href=.*?openvpn-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
