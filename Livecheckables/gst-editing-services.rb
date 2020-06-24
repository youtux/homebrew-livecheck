class GstEditingServices
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-editing-services/"
    regex(/href=.*?gst(?:reamer)?-editing-services-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
