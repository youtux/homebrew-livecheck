class Packetq
  livecheck do
    url :homepage
    regex(%r{href="/files/packetq/packetq-([0-9,.]+)\.t})
  end
end
