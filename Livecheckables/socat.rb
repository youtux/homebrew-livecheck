class Socat
  livecheck do
    url "http://www.dest-unreach.org/socat/download/"
    regex(/socat-([0-9.]+)\.t/i)
  end
end
