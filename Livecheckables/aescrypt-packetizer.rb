class AescryptPacketizer
  livecheck do
    url "https://www.aescrypt.com/download/"
    regex(%r{href="/download/v3/linux/aescrypt-([0-9,\.]+)\.t})
  end
end
