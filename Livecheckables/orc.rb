class Orc
  livecheck do
    url "https://gstreamer.freedesktop.org/src/orc/"
    regex(/href=.*?orc[._-]v?([\d.]+\.[\d.]+\.[\d.]+)\.t/i)
  end
end
