class Gmic
  livecheck do
    url "https://gmic.eu/files/source/"
    regex(/gmic_v?(\d+(?:\.\d+)+)\.t/i)
  end
end
