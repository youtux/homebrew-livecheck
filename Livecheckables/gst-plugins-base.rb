class GstPluginsBase
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-plugins-base/"
    regex(/href=.*?gst-plugins-base-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
