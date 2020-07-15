class Gstreamer
  livecheck do
    url "https://gstreamer.freedesktop.org/src/gstreamer/"
    regex(/href=.*?gstreamer-v?(\d+\.\d*[02468](?:\.\d+)*)\.t/i)
  end
end
