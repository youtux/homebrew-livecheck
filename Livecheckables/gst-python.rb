class GstPython
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-python/"
    regex(/href=.*?gst-python-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
