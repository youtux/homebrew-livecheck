class GstValidate
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-validate/"
    regex(/href=.*?gst-validate[._-]v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
