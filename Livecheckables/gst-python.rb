class GstPython
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gst-python/"
    regex(/href=.*?gst-python-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
