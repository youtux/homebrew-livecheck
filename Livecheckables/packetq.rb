class Packetq
  livecheck do
    url :homepage
    regex(/href=.*?packetq-([0-9,.]+)\.t/i)
  end
end
