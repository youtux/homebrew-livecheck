class Openvpn
  livecheck do
    url "https://openvpn.net/index.php/download/community-downloads.html"
    regex(%r{href=".*?/openvpn-([0-9\.]+)\.t})
  end
end
