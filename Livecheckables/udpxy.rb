class Udpxy
  livecheck do
    url "http://www.udpxy.com/download/1_23/"
    regex(/href=.*?udpxy.([0-9.\-]+)-prod\.t/)
  end
end
