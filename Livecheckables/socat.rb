class Socat
  livecheck do
    url "http://www.dest-unreach.org/socat/download/"
    regex(/socat[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
