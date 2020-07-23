class Socat
  livecheck do
    url "http://www.dest-unreach.org/socat/download/"
    regex(/socat-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
