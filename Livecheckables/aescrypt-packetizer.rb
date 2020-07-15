class AescryptPacketizer
  livecheck do
    url "https://www.aescrypt.com/download/"
    regex(/href=.*?aescrypt-([0-9,.]+)\.t/)
  end
end
