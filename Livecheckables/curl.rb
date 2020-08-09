class Curl
  livecheck do
    url "https://curl.haxx.se/download/"
    regex(/href=.*?curl[._-]v?(.*?)\.t/i)
  end
end
