class Openrtsp
  livecheck do
    url "http://www.live555.com/liveMedia/public/"
    regex(/href=.*?live[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
