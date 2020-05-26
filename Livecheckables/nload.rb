class Nload
  livecheck do
    url "http://www.roland-riegel.de/nload/"
    regex(/href=.+?nload-v?(\d+(?:\.\d+)+)\.t/)
  end
end
