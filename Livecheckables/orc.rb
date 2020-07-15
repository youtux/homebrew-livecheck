class Orc
  livecheck do
    url "https://gstreamer.freedesktop.org/src/orc/"
    regex(/href=.*?orc-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
