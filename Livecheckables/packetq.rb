class Packetq
  livecheck do
    url :homepage
    regex(/href=.*?packetq-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
