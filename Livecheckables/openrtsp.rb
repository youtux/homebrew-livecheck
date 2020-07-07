class Openrtsp
  livecheck do
    url "http://www.live555.com/liveMedia/public/"
    regex(/live\.([0-9a-z.]+)\.t/)
  end
end
