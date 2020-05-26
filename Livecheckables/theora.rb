class Theora
  livecheck do
    url "https://www.theora.org/downloads/"
    regex(/href=.+?libtheora-v?(\d+(?:\.\d+)+)\.t/)
  end
end
