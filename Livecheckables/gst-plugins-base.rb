class GstPluginsBase
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-base/"
    regex(/href="gst-plugins-base-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
