class Theora
  livecheck do
    url "https://www.theora.org/downloads/"
    regex(/href=.*?libtheora[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
