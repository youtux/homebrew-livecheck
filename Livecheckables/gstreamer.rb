class Gstreamer
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gstreamer/"
    regex(/href="gstreamer-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
