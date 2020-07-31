class AescryptPacketizer
  livecheck do
    url "https://www.aescrypt.com/download/"
    regex(%r{href=.*?/linux/aescrypt[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
