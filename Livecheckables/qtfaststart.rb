class Qtfaststart
  livecheck do
    url "https://libav.org/releases/"
    regex(/href=.*?libav[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
