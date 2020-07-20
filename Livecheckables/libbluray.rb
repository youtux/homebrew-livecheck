class Libbluray
  livecheck do
    url "https://download.videolan.org/pub/videolan/libbluray/"
    regex(%r{>([\d.]+)/<}i)
  end
end
