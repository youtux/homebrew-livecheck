class Curl
  livecheck do
    url "https://curl.haxx.se/download/"
    regex(/curl[._-]v?(.*?)\.t/i)
  end
end
