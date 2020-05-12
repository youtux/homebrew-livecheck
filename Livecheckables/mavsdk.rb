class Mavsdk
  livecheck do
    url :satble
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
