class Mosquitto
  livecheck do
    url "https://mosquitto.org/files/source/"
    regex(/href=.*?mosquitto-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
