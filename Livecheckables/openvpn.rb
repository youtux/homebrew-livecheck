class Openvpn
  livecheck do
    url :homepage
    regex(/href=.*?openvpn[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
