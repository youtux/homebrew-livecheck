class Curl
  livecheck do
    url "https://curl.haxx.se/download/"
    regex(/curl-(.*?)\.tar\.gz/)
  end
end
