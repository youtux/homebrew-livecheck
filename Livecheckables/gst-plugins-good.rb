class GstPluginsGood
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-good/"
    regex(/href="gst-plugins-good-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
