class Packetq
  livecheck do
    url "https://www.dns-oarc.net/tools/packetq"
    regex(%r{href="/files/packetq/packetq-([0-9,.]+)\.t})
  end
end
