class GstPluginsUgly
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-ugly/"
    regex(/href="gst-plugins-ugly-([\d.]+\.[\d.]+\.[\d.]+)\.t/)
  end
end
