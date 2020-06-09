class Openvpn
  livecheck do
    url :homepage
    regex(%r{href=".*?/openvpn-([0-9.]+)\.t})
  end
end
