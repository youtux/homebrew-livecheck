class Gmic
  livecheck do
    url "https://gmic.eu/files/source/"
    regex(/gmic[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
