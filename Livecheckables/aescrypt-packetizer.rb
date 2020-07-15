class AescryptPacketizer
  livecheck do
    url "https://www.aescrypt.com/download/"
    regex(%r{href=.*?/linux/aescrypt-([0-9,.]+)\.t})
  end
end
