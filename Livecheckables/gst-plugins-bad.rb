class GstPluginsBad
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-bad/"
    regex(/href="gst-plugins-bad-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
