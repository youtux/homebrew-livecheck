class GstPluginsGood
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-good/"
    regex(/href="gst-plugins-good-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
