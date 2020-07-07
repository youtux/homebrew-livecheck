class Libsamplerate
  livecheck do
    url "http://www.mega-nerd.com/SRC/download.html"
    regex(/href=.*?libsamplerate[._-]v?(\d+(?:\.\d+)+)\.t[^.]+(?:\.[^.]+)?["' >]/i)
  end
end
