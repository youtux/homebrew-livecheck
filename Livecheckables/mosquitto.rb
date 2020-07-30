class Mosquitto
  livecheck do
    url "https://mosquitto.org/files/source/"
    regex(/href=.*?mosquitto[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
