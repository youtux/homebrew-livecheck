class Curl
  livecheck do
    url "https://curl.haxx.se/download/"
    regex(/curl-(.*?)\.t/i)
  end
end
